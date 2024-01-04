import SwiftUI
import Combine

extension TestsHistoryView {
    class Model: ObservableObject {
        let colleges: [College]
        private var user: FirebaseUser?
        private var cancellables = Set<AnyCancellable>()
        private let dependencies: DependencyManager
        
        var pathfinderTestHistory: [PathfinderTestResult]
        
        init(
            colleges: [College],
            appState: AppState
        ) {
            self.colleges = colleges
            self.user = appState.user
            self.pathfinderTestHistory = []
            self.dependencies = .shared
            
            setupModel()
            
            appState.$user
                .sink { [weak self] user in
                    guard let self else { return }
                    self.user = user
                }
                .store(in: &cancellables)
        }
    }
}

private extension TestsHistoryView.Model {
    func setupModel() {
        streamPathfinderTestHistory()
    }
    
    func streamPathfinderTestHistory() {
        guard let user else { return }
        dependencies.network.streamPathfinderTestHistory(userId: user.id){ [weak self] response in
            switch response {
            case let .success(history):
                self?.pathfinderTestHistory = history
            case .failure(let failure):
                print("Error getting history: \(failure.localizedDescription)")
            }
        }
    }
}
