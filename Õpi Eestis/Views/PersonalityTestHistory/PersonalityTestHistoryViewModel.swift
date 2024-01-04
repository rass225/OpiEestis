import SwiftUI
import Combine

extension PersonalityTestHistoryView {
    class Model: ObservableObject {
        @Published var currentLocale: AppLocale
        @Published var personalityTestHistory: [PersonalityTestResult]
        private var user: FirebaseUser?
        private var cancellables = Set<AnyCancellable>()
        private let dependencies: DependencyManager
        
        init(appState: AppState) {
            self.user = appState.user
            self.personalityTestHistory = []
            self.dependencies = .shared
            self.currentLocale = DependencyManager.shared.localeManager.currentLocale
            
            setupModel()
            appState.$user
                .sink { [weak self] user in
                    guard let self else { return }
                    self.user = user
                }
                .store(in: &cancellables)
            
            DependencyManager.shared.localeManager.$currentLocale
                .sink { [weak self] user in
                    guard let self else { return }
                    self.currentLocale = currentLocale
                }
                .store(in: &cancellables)
        }
    }
}

extension PersonalityTestHistoryView.Model {
    func setupModel() {
        streamPersonalityTestHistory()
    }
    
    func streamPersonalityTestHistory() {
        guard let user else { return }
        dependencies.network.streamPersonalityTestHistory(userId: user.id) { [weak self] response in
            switch response {
            case let .success(history):
                self?.personalityTestHistory = history
            case .failure(let failure):
                print("Error getting history: \(failure.localizedDescription)")
            }
        }
    }
}
