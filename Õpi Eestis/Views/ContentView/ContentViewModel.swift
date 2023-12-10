import Foundation
import Combine
import SwiftUI

extension ContentView {
    class Model: ObservableObject {
        @Published private(set) var schools: [College]
        @Published private(set) var viewState: ViewState = .loading
        private let dependencies: DependencyManager
        
        init(
            dependencies: DependencyManager = .shared
        ) {
            print("✅ Content View Model initialized")
            self.dependencies = dependencies
            self.schools = []
            self.start()
        }
    }
}

extension ContentView.Model {
    func refresh() {
        Task {
            await fetchSchools()
        }
    }
}

private extension ContentView.Model {
    func start() {
        Task {
            await fetchSchools()
        }
    }
    
    func fetchSchools() async {
        DispatchQueue.main.async {
            self.viewState = .loading
        }
        do {
            let colleges = try await dependencies.network.fetchColleges()
            DispatchQueue.main.async {
                self.schools = colleges.sorted(by: \.name)
                self.viewState = .normal
            }
        } catch {
            print(error.localizedDescription)
            DispatchQueue.main.async {
                self.viewState = .error(error)
            }
        }
    }
}

extension ContentView.Model {
    enum ViewState {
        case loading
        case normal
        case error(Error)
    }
}
