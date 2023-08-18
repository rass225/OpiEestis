import Foundation
import Combine
import SwiftUI

extension ContentView {
    class Model: ObservableObject {
        private let dependencies: DependencyManager
        @Published var schools: [College] = []
        
        
        init(
            dependencies: DependencyManager = .shared
        ) {
            self.dependencies = dependencies
            fetchSchools()
        }
        
        func fetchSchools() {
            dependencies.firebase.fetchSchools {
                switch $0 {
                case let .success(schools):
                    self.schools = schools.sorted(by: \.name)
                case let .failure(error):
                    print(error)
                }
            }
        }
        
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
    }
}

extension ContentView {
    enum Tabs {
        case colleges
        case map
        case favorites
    }
}
