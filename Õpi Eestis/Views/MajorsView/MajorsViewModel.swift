import SwiftUI
import Combine

extension MajorsView {
    class Model: ObservableObject {
        @Published var selectedLevel: Level
        @Published var selectedLanguage: Language
        @Published var selectedCost: CostSelection
        @Published var selectedDuration: DurationSelection
        @Published var selectedLocation: LocationSelection
        @Published var searchText: String
        @Published var favorites: [Major]
        @Published var detailLevel: DetailLevel
        @Published var isFilterPresented: Bool
        @Published var levels: [Level]
        @Published var languages: [Language]
        @Published var durations: [Double]
        @Published var locations: [City]
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
            self.isFilterPresented = false
            self.searchText = ""
            self.levels = []
            self.favorites = []
            self.languages = []
            self.durations = []
            self.locations = []
            self.college = college
            self.majors = majors
            self.detailLevel = .detailed
            
            start()
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
            return count
        }
        
        var displayedMajors: [Major] {
            var filteredMajors = majors
            
            switch selectedLocation {
            case .all:
                break
            case let .specific(city):
                filteredMajors = filteredMajors.filter { $0.studyLocation.contains(city) }
            }
            
            switch selectedLevel {
            case .all:
                break
            default:
                filteredMajors = filteredMajors.filter { $0.level ==  selectedLevel }
            }
            
            switch selectedLanguage {
            case .all:
                break
            default:
                filteredMajors = filteredMajors.filter { $0.language ==  selectedLanguage }
            }
            
            switch selectedCost {
            case .all:
                break
            case .paid:
                filteredMajors = filteredMajors.filter { $0.cost.amount > 0 }
            case .free:
                filteredMajors = filteredMajors.filter { $0.cost.amount == 0 }
            }
            
            switch selectedDuration {
            case .all:
                break
            case let .specific(duration):
                filteredMajors = filteredMajors.filter { $0.duration == duration }
            }
            
            if !searchText.isEmpty {
                filteredMajors = filteredMajors.filter { $0.name.contains(searchText) }
            }
            
            filteredMajors = filteredMajors.sorted(by: \.name)
            
            return filteredMajors
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
//        observeUserDefaults()
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
}
