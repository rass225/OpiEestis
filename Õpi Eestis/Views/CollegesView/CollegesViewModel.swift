import SwiftUI

extension CollegesView {
    class Model: ObservableObject {
        @Published var tabSelection: ViewTabs = .collegesList
        let schools: [College]
        let availableTabs: [ViewTabs] = [.collegesList, .collegesMap]
        
        @Published var mapView: MapView? = nil
        
        var allBranches: [CollegeBranch] {
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
        
        init(schools: [College]) {
            self.schools = schools
            mapView = MapView(locations: allBranches)
        }
        
        func switchTab(to tab: ViewTabs) {
            tabSelection = tab
        }
    }
}

extension CollegesView.Model {
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
