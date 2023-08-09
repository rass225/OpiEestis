import Foundation
import Combine
import SwiftUI

extension ContentView {
    class Model: ObservableObject {
        private let firebase: FirebaseManager
        @Published var schools: [College] = []
        
        init() {
            firebase = .init()
            fetchSchools()
        }
        
        func fetchSchools() {
            firebase.fetchSchools {
                switch $0 {
                case let .success(schools):
                    self.schools = schools.sorted(by: { $0.name < $1.name })
                case let .failure(error):
                    print(error)
                }
            }
        }
        
        func getAllBranches() -> [MapView.CollegeBranch] {
            var allBranches: [MapView.CollegeBranch] = []

                for college in schools {
                    for branch in college.branches {
                        let collegeBranch = MapView.CollegeBranch(location: branch, parentCollege: college)
                        allBranches.append(collegeBranch)
                    }
                }
                
                return allBranches
        }
        
        func navigateToAbout() -> AnyView {
            return AnyView(AboutView())
        }
        
        func navigateToSchoolList() -> AnyView {
            return AnyView(SchoolListView())
        }
    }
}

