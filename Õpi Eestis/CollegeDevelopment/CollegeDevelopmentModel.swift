import SwiftUI

extension CollegeDevelopment {
    class Model: ObservableObject {
        @Published var localMajors: [Major]
        @Published var remoteMajors: [NewMajor]
        @Published var listSelection: ListSelection = .local
        @Published var localMajorSelection: Major?
        @Published var remoteMajorSelection: NewMajor?
        
        let college: College
        private let dependencies: DependencyManager = .shared
        
        init(
            college: College
        ) {
            self.localMajors = []
            self.remoteMajors = []
            self.college = college
            
            fetchRemoteMajors()
            Task {
                await withTaskGroup(of: Void.self) { group in
                    group.addTask { await self.fetchLocalMajors() }
                    for await _ in group { }
                }
            }
        }
    }
}

extension CollegeDevelopment.Model {
    func fetchRemoteMajors() {
        dependencies.network.streamMajors(schoolId: college.id) {
            switch $0 {
            case let .success(majors):
                self.remoteMajors = majors.sorted(by: \.name)
            case let .failure(error):
                print(error.localizedDescription)
            }
        }
    }
    
    func fetchLocalMajors() async {
        if let majors = await dependencies.network.fetchLocalMajors(college.jsonString) {
            DispatchQueue.main.async {
                self.localMajors = majors.sorted(by: \.name)
            }
        }
    }
    
    enum ListSelection {
        case local
        case remote
    }
}
