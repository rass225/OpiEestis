import SwiftUI
import Combine

extension MajorsView {
    class Model: ObservableObject {
        @Published var selectedLevel: Level
        @Published var searchText: String
        @Published var levels: [Level]
        @Published var favorites: [Major]
        @Published var detailLevel: DetailLevel
        private let dependencies: DependencyManager
        private var cancellables = Set<AnyCancellable>()
        
        let college: College
        let majors: [Major]
        
        init(
            college: College,
            majors: [Major],
            dependencies: DependencyManager = .shared,
            selectedLevel: Level = .all
        ) {
            self.selectedLevel = selectedLevel
            self.searchText = ""
            self.levels = []
            self.favorites = []
            self.college = college
            self.majors = majors
            self.detailLevel = .detailed
            self.dependencies = dependencies
            
            start()
        }
        
        var displayedMajors: [Major] {
            if selectedLevel == .all {
                if searchText.isEmpty {
                    return majors
                        .sorted(by: \.name)
                } else {
                    return majors
                        .sorted(by: \.name)
                        .filter { $0.name.contains(searchText) }
                }
            } else {
                if searchText.isEmpty {
                    return majors
                        .filter({ $0.level == selectedLevel})
                        .sorted(by: \.name)
                } else {
                    return majors
                        .filter({ $0.level == selectedLevel})
                        .filter { $0.name.contains(searchText) }
                        .sorted(by: \.name)
                }
            }
        }
    }
}

// MARK: - Private Methods

private extension MajorsView.Model {
    func start() {
        configureLevels()
        observeUserDefaults()
    }
    
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
}

// MARK: - Public Methods

extension MajorsView.Model {
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
        favorites = dependencies.userDefaults.getFavorites(forUniversity: college)
    }
    
    func setSearchBarColor() {
        UISearchBar.appearance().tintColor = UIColor(college.palette.base)
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
        
        var label: String {
            switch self {
            case .detailed: return "Detailne vaade"
            case .minimal: return "Lihtne vaade"
            }
        }
    }
}
