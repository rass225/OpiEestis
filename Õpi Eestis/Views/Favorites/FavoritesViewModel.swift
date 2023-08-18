import Combine
import SwiftUI

extension FavoritesView {
    class Model: ObservableObject {
        @Published var favorites: [String: [majorsMinors]]
        let colleges: [College]
        private let dependencies: DependencyManager
        private var cancellables = Set<AnyCancellable>()
        
        init(
            colleges: [College],
            dependencies: DependencyManager = .shared,
            favorites: [String: [majorsMinors]] = [:]
        ) {
            self.favorites = favorites
            self.colleges = colleges
            self.dependencies = dependencies
            
            observeDefaults()
            updateFavorites()
        }
    }
}

// MARK: - Public Methods

extension FavoritesView.Model {
    func removeFavorite(major: majorsMinors, college: College) {
        dependencies.userDefaults.removeFavorite(university: college, major: major)
    }
}

// MARK: - Private Methods

private extension FavoritesView.Model {
    func observeDefaults() {
        NotificationCenter.default.publisher(for: UserDefaults.didChangeNotification)
            .sink { [weak self] _ in
                self?.updateFavorites()
            }
            .store(in: &cancellables)
    }
    
    func updateFavorites() {
        DispatchQueue.main.async {
            self.favorites = self.dependencies.userDefaults.getAllFavorites()
        }
    }
}

// MARK: - Objects

extension FavoritesView.Model {
    struct Favorite: Hashable {
        let college: College
        let major: majorsMinors
    }
}
