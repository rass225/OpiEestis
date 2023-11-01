import Combine
import SwiftUI

extension FavoritesView {
    class Model: ObservableObject {
        @Published var favorites: [Favorite] = []
        let colleges: [College]
        private let dependencies: DependencyManager
        private var cancellables = Set<AnyCancellable>()
        let user: FirebaseUser
        
        var groupedFavorites: [String: [Favorite]] {
            Dictionary(grouping: favorites) { $0.collegeId }
        }
        
        init(
            colleges: [College],
            dependencies: DependencyManager = .shared,
            user: FirebaseUser
        ) {
            self.colleges = colleges
            self.dependencies = dependencies
            self.user = user
            streamFavorites()
        }
    }
}

// MARK: - Public Methods

extension FavoritesView.Model {
    func removeFavorite(major: NewMajor, college: College) {
        guard let favorite = favorites.first(where: { $0.major.id == major.id }) else { return }
        Task {
            do {
               try await dependencies.network.removeFavorite(userId: user.id, favoriteId: favorite.id)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

// MARK: - Private Methods

private extension FavoritesView.Model {
    func streamFavorites() {
        dependencies.network.streamUserFavoriteMajors(userId: user.id) { [weak self] result in
            switch result {
            case let .success(favorites):
                self?.favorites = favorites
            case let .failure(error):
                print(error.localizedDescription)
            }
        }
    }
}

// MARK: - Objects

struct Favorite: Hashable, Codable {
    let id: String
    let collegeId: String
    let major: NewMajor
}
