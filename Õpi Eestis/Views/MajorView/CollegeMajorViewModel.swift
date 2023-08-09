import SwiftUI

extension CollegeMajorView {
    class Model: ObservableObject {
        let major: majorsMinors
        let college: College
        @Published var favorites: [majorsMinors] = []
        let userDefaultsManager = UserDefaultsManager()
        let tabPool: [Tabs] = [
            .overview,
            .modules,
            .outcomes,
            .requirements
        ]
        @Published var isDescriptionExpanded = false
        @Published var tabSelection: Tabs = .outcomes
        
        var descriptionExpansionLabel: String {
            if isDescriptionExpanded {
                return OEAppearance.Locale.expanded.isExpanded
            } else {
                return OEAppearance.Locale.expanded.notExpanded
            }
        }
        
        var eapTopLabel: Int {
            if major.hasEap() {
                return  major.eap!
            } else {
                return major.ekap!
            }
        }
        
        init(
            major: majorsMinors,
            college: College,
            isExpanded: Bool = false,
            tabSelection: Tabs
        ) {
            self.major = major
            self.college = college
            self.isDescriptionExpanded = isExpanded
            self.tabSelection = tabSelection
            getFavorites()
        }
    }
}

extension CollegeMajorView.Model {
    func openWebsite() {
        guard let url = URL(string: major.majorWebsite) else { return }
        UIApplication.shared.open(url)
    }
    
    func getFavorites() {
        let favorites = userDefaultsManager.retrieveFavorites(college: college)
        print(favorites)
        self.favorites = favorites
    }
}

extension CollegeMajorView.Model {
    enum Tabs: CaseIterable {
        case overview
        case requirements
        case modules
        case outcomes
        
        var image: Image {
            switch self {
            case .overview: return .docFill
            case .requirements: return .requirementsFill
            case .modules: return .stackFill
            case .outcomes: return .outcomesFill
            }
        }
    }
}
