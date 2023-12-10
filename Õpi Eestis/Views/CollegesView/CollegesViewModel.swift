import SwiftUI

extension CollegesView {
    class Model: ObservableObject {
        @Published var tabSelection: ViewTabs = .collegesList
        let schools: [College]
        let availableTabs: [ViewTabs] = [.collegesList, .collegesMap]
        
        init(schools: [College]) {
            self.schools = schools
        }
    }
}

extension CollegesView.Model {
    func getAllBranches() -> [CollegeBranch] {
        var allBranches: [CollegeBranch] = []
            for college in schools {
                for branch in college.branches {
                    let collegeBranch = CollegeBranch(
                        location: branch,
                        parentCollege: college
                    )
                    allBranches.append(collegeBranch)
                }
            }
            return allBranches
    }
    
    enum ViewTabs {
        case collegesList
        case collegesMap
        
        var image: Image {
            switch self {
            case .collegesList: return Theme.Icons.graduation
            case .collegesMap: return Theme.Icons.map
            }
        }
    }
}
