import Foundation
import Combine
import SwiftUI

extension ContentView {
    class Model: ObservableObject {
        @Published var schools: [College]
        private let dependencies: DependencyManager
        
        init(
            dependencies: DependencyManager = .shared
        ) {
            print("✅ Content View Model initialized")
            self.dependencies = dependencies
            self.schools = []
            Task {
                await fetchSchools()
            }
        }
    }
}

extension ContentView.Model {
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

private extension ContentView.Model {
    func fetchSchools() async {
        do {
            let colleges = try await dependencies.network.fetchColleges()
            DispatchQueue.main.async {
                self.schools = colleges.sorted(by: \.name)
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}
