import SwiftUI

extension MajorsView {
    class Model: ObservableObject {
        let college: College
        let majors: [majorsMinors]
        @Published var selectedLevel: levelchoice = .allLevels
        @Published var searchText = ""
        @Published var isAscending = false
        @Published var isSearching = false
        @Published var levels: [levelchoice] = []
        @Published var favorites: [majorsMinors] = []
        let userDefaultsManager = UserDefaultsManager()
        
        init(
            college: College,
            majors: [majorsMinors]
        ) {
            self.college = college
            self.majors = majors
            
            levels.append(.allLevels)
            
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
            if majors.contains(where: { $0.level == .kutseharidus}) {
                levels.append(.kutseharidus)
            }
        }
        
        enum Level {
            case applied
            case bachelors
            case integrated
            case masters
            case doctors
            case vocational
            case all
        }
        
        var displayedMajors: [majorsMinors] {
            if selectedLevel == .allLevels {
                return majors
                    .sorted(by: \.name)
            } else {
                return majors
                    .filter({ $0.level == selectedLevel})
                    .sorted(by: \.name)
            }
        }
    }
}

extension MajorsView.Model {
    func getFavorites() {
        favorites = userDefaultsManager.getFavorites(forUniversity: college)
    }
    
    func isFavorite() {
        
    }

    func viewDidDisappear() {
        isSearching = false
        searchText = ""
    }

    struct SelectedLevel: Identifiable {
        var id = UUID()
        var title: String
        var level: levelchoice
        var majors: [majorsMinors]
    }
}

extension Sequence {
    func sorted<T: Comparable>(by keyPath: KeyPath<Element, T>, descending: Bool = false) -> [Element] {
        return sorted { a, b in
            let comparisonResult = a[keyPath: keyPath] < b[keyPath: keyPath]
            return descending ? !comparisonResult : comparisonResult
        }
    }
}
