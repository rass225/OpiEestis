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
        @Published var favorites: [Favorite]
        @Published var detailLevel: DetailLevel
        @Published var isFilterPresented: Bool
        @Published var levels: [Level]
        @Published var languages: [Language]
        @Published var durations: [Double]
        @Published var locations: [City]
        @Published var studyTypes: [StudyType]
        private let dependencies: DependencyManager = .shared
        private var cancellables = Set<AnyCancellable>()
        
        let college: College
        let majors: [NewMajor]
        var user: FirebaseUser?
        
        var currentLocale: AppLocale {
            DependencyManager.shared.localeManager.currentLocale
        }
        
        init(
            college: College,
            majors: [NewMajor],
            user: FirebaseUser?,
            appState: AppState,
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
            self.user = user
            
            start()
            
            $debouncedSearchText
                .debounce(for: .seconds(0.2), scheduler: DispatchQueue.main)
                .sink { [weak self] term in
                    self?.searchText = term
                }
                .store(in: &cancellables)
            
            appState.$user
                .sink { [weak self] user in
                    guard let self else { return }
                    self.user = user
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
        
        func isFavorite(_ major: NewMajor) -> Bool {
            guard user != nil else { return false }
            return favorites.contains(where: { $0.major.id == major.id })
        }
        
        var displayedMajors: [NewMajor] {
            let result = majors.filter { major in
                if case let .specific(city) = selectedLocation, !major.studyLocation.contains(city) {
                    return false
                }
                
                if selectedLevel != .all, major.level != selectedLevel {
                    return false
                }
                
                if selectedLanguage != .all {
                    if !major.languages.contains(selectedLanguage) {
                        return false
                    }
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
                    if let studyTypes = major.studyTypes, !studyTypes.contains(specificStudyType) {
                       return false
                    }
                }

                if case let .specific(duration) = selectedDuration, major.duration != duration {
                    return false
                }
                
                if !searchText.isEmpty {
                    switch dependencies.localeManager.currentLocale {
                    case .english:
                        if let name = major.nameEn {
                            if !name.lowercased().contains(searchText.lowercased()) {
                                return false
                            }
                        } else {
                            if !major.name.lowercased().contains(searchText.lowercased()) {
                                return false
                            }
                        }
                    case .estonian:
                        if !major.name.lowercased().contains(searchText.lowercased()) {
                            return false
                        }
                    }
                }
                
                return true
            }
            let sortedResult = result.customSorted(by: currentLocale)
            return sortedResult
        }
    }
}

// MARK: - Private Methods

private extension MajorsView.Model {
    
    func streamFavorites() {
        guard let user else { return }
        dependencies.network.streamUserFavoriteMajors(userId: user.id) { [weak self] result in
            switch result {
            case let .success(favorites):
                self?.favorites = favorites
            case let .failure(error):
                print(error.localizedDescription)
            }
        }
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
        var allLanguages = majors
            .map(\.languages)
            .flatMap { $0 }
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
        let studyTypesX = majors
            .compactMap(\.studyTypes)
            .flatMap { $0 }
        let uniqueTypes = Set(studyTypesX)
        self.studyTypes = Array(uniqueTypes)
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
        streamFavorites()
    }
    
    func addFavorite(major: NewMajor) {
        guard let user else { return }
        Task {
            do {
                try await dependencies.network.addFavorite(userId: user.id, major: major, college: college)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
                                        
    func removeFavorite(major: NewMajor) {
        guard let user else { return }
        guard let favorite = favorites.first(where: { $0.major.id == major.id }) else { return }
        Task {
            do {
                try await dependencies.network.removeFavorite(userId: user.id, favoriteId: favorite.id)
            } catch {
                
            }
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
        
        var label: LocalizedStringKey {
            switch self {
            case .all: return Theme.Locale.Majors.all
            case .free: return Theme.Locale.Majors.free
            case .paid: return Theme.Locale.Majors.paid
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
        case specific(StudyType)
    }
}
