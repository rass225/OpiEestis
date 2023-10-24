import SwiftUI
import Combine

extension MajorsView {
    class Model: ObservableObject {
        @Published var selectedLevel: Level
        @Published var selectedLanguage: Language
        @Published var selectedCost: CostSelection
        @Published var selectedDuration: DurationSelection
        @Published var selectedLocation: LocationSelection
        @Published var selectedStudyType: StudyTypeSelection
        @Published var searchText: String
        @Published var debouncedSearchText: String
        @Published var favorites: [Major]
        @Published var detailLevel: DetailLevel
        @Published var isFilterPresented: Bool
        @Published var levels: [Level]
        @Published var languages: [Language]
        @Published var durations: [Double]
        @Published var locations: [City]
        @Published var studyTypes: [String]
        private let dependencies: DependencyManager = .shared
        private var cancellables = Set<AnyCancellable>()
        
        let college: College
        let majors: [Major]
        
        init(
            college: College,
            majors: [Major],
            selectedLevel: Level = .all
        ) {
            print("✅ Majors View Model initialized")
            self.selectedLevel = selectedLevel
            self.selectedLanguage = .all
            self.selectedCost = .all
            self.selectedDuration = .all
            self.selectedLocation = .all
            self.selectedStudyType = .all
            self.isFilterPresented = false
            self.searchText = ""
            self.levels = []
            self.favorites = []
            self.languages = []
            self.durations = []
            self.locations = []
            self.studyTypes = []
            self.college = college
            self.majors = majors
            self.detailLevel = .detailed
            self.debouncedSearchText = ""
            start()
            
            $debouncedSearchText
                .debounce(for: .seconds(0.2), scheduler: DispatchQueue.main)
                .sink { [weak self] term in
                    self?.searchText = term
                }
                .store(in: &cancellables)
        }
        
        deinit {
            print("Majors View Model deinitialized")
        }
        
        var filtersAmount: Int {
            var count = 0
            if selectedLevel != .all { count += 1 }
            if selectedLanguage != .all { count += 1 }
            if selectedCost != .all { count += 1 }
            if selectedLocation != .all { count += 1 }
            if selectedDuration != .all { count += 1 }
            if selectedStudyType != .all { count += 1 }
            return count
        }
        
        func isFavorite(_ major: Major) -> Bool {
            favorites.contains(where: {
                $0.name == major.name &&
                $0.level == major.level
            })
        }
        
        var displayedMajors: [Major] {
            let result = majors.filter { major in
                if case let .specific(city) = selectedLocation, !major.studyLocation.contains(city) {
                    return false
                }
                
                if selectedLevel != .all, major.level != selectedLevel {
                    return false
                }
                
                if selectedLanguage != .all, major.language != selectedLanguage {
                    return false
                }
                
                switch selectedCost {
                case .all:
                    break
                case .paid:
                    if major.cost.amount <= 0 {
                        return false
                    }
                case .free:
                    if major.cost.amount > 0 {
                        return false
                    }
                }
                
                if case let .specific(specificStudyType) = selectedStudyType {
                    if let studyType = major.studyType {
                        if !studyType.contains(specificStudyType) {
                            return false
                        }
                    }
                }

                if case let .specific(duration) = selectedDuration, major.duration != duration {
                    return false
                }
                
                if !searchText.isEmpty, !major.name.lowercased().contains(searchText.lowercased()) {
                    return false
                }
                
                return true
            }.sorted(by: \.name)
            
            return result
        }
    }
}

// MARK: - Private Methods

private extension MajorsView.Model {
    
    func observeUserDefaults() {
        NotificationCenter
            .default
            .publisher(for: UserDefaults.didChangeNotification)
            .sink { [weak self] _ in
                self?.getFavorites()
            }
            .store(in: &cancellables)
    }
    
    func configureLevels() {
        levels.append(.all)
        
        if majors.contains(where: { $0.level == .applied}) {
            levels.append(.applied)
        }
        if majors.contains(where: { $0.level == .bachelor}) {
            levels.append(.bachelor)
        }
        if majors.contains(where: { $0.level == .integrated}) {
            levels.append(.integrated)
        }
        if majors.contains(where: { $0.level == .masters}) {
            levels.append(.masters)
        }
        if majors.contains(where: { $0.level == .doctor}) {
            levels.append(.doctor)
        }
        if majors.contains(where: { $0.level == .vocational}) {
            levels.append(.vocational)
        }
    }
    
    func configureLanguages() {
        var allLanguages = majors.map(\.language)
        allLanguages.append(.all)
        let uniqueLanguages = Set(allLanguages)
        languages = Array(uniqueLanguages).sorted(by: \.rawValue)
    }
    
    func configureDurations() {
        let allDurations = majors.map(\.duration)
        let uniqueDurations = Set(allDurations)
        durations = Array(uniqueDurations).sorted(by: \.magnitude)
    }
    
    func configureLocations() {
        let allLocations = majors.flatMap(\.studyLocation)
        let uniqueLocations = Set(allLocations)
        locations = Array(uniqueLocations).sorted(by: \.rawValue)
    }
    
    func configureStudyTypes() {
        let studyTypes = majors
            .map(\.studyType)
            .map {
                $0?.split(separator: ",")
                    .map { String($0).trimmingCharacters(in: .whitespacesAndNewlines) }
            }
            .compactMap { $0 }
            .flatMap { $0 }
        let uniquestudyTypes = Set(studyTypes)
        self.studyTypes = Array(uniquestudyTypes)
    }
    
    func setSearchBarColor() {
        UISearchBar.appearance().tintColor = UIColor(college.palette.base)
    }
    
    func setSegmentControlColor() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(college.palette.base)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(college.palette.base)], for: .normal)
    }
}

// MARK: - Public Methods

extension MajorsView.Model {
    func start() {
        configureDurations()
        configureLevels()
        configureLanguages()
        configureLocations()
        configureStudyTypes()
        observeUserDefaults()
    }
    
    func addFavorite(major: Major) {
        dependencies.userDefaults.addFavorite(
            university: college,
            major: major
        )
    }
                                        
    func removeFavorite(major: Major) {
        dependencies.userDefaults.removeFavorite(
            university: college,
            major: major
        )
    }
    
    func getFavorites() {
        let favorites = dependencies.userDefaults.getFavorites(forUniversity: college)
        DispatchQueue.main.async {
            self.favorites = favorites
        }
    }
    
    func resetFilters() {
        selectedCost = .all
        selectedLevel = .all
        selectedDuration = .all
        selectedLanguage = .all
        selectedLocation = .all
        selectedStudyType = .all
    }
    
    func setTheme() {
        setSearchBarColor()
        setSegmentControlColor()
    }
    
    func flipDetailLevel() {
        switch detailLevel {
        case .detailed:
            detailLevel = .minimal
        case .minimal:
            detailLevel = .detailed
        }
    }
}

// MARK: - Objects

extension MajorsView.Model {
    struct SelectedLevel: Identifiable {
        var id = UUID()
        var title: String
        var level: Level
        var majors: [Major]
    }
    
   
    enum DetailLevel: CaseIterable {
        case minimal
        case detailed
        
        var icon: String {
            switch self {
            case .detailed: return "plus.magnifyingglass"
            case .minimal: return "minus.magnifyingglass"
            }
        }
        
        var reverseIcon: String {
            switch self {
            case .detailed: return "minus.magnifyingglass"
            case .minimal: return "plus.magnifyingglass"
            }
        }
        
        var label: String {
            switch self {
            case .detailed: return "Detailne vaade"
            case .minimal: return "Lihtne vaade"
            }
        }
    }
    
    enum CostSelection: CaseIterable {
        case all
        case free
        case paid
        
        var label: String {
            switch self {
            case .all: return "Kõik"
            case .free: return "Tasuta"
            case .paid: return "Tasuline"
            }
        }
    }
    
    enum DurationSelection: Equatable, Hashable {
        case all
        case specific(Double)
    }
    
    enum LocationSelection: Equatable, Hashable {
        case all
        case specific(City)
    }
    
    enum StudyTypeSelection: Equatable, Hashable {
        case all
        case specific(String)
    }
}
