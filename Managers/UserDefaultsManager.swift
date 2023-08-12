import Foundation

class UserDefaultsManager {
    private let favoritesKey = "userFavorites"

    func addFavorite(university: College, major: majorsMinors) {
        var favorites = getAllFavorites()
        
        var universityFavorites = favorites[university.name] ?? []
        if !universityFavorites.contains(where: { $0.name == major.name && $0.language == major.language && $0.level == major.level }) {
            universityFavorites.append(major)
        }
        
        favorites[university.name] = universityFavorites
        saveFavorites(favorites)
    }

    func removeFavorite(university: College, major: majorsMinors) {
        var favorites = getAllFavorites()
        
        if var universityFavorites = favorites[university.name] {
            universityFavorites.removeAll { $0.name == major.name && $0.language == major.language && $0.level == major.level }
            favorites[university.name] = universityFavorites.isEmpty ? nil : universityFavorites
        }

        saveFavorites(favorites)
    }

    func getAllFavorites() -> [String: [majorsMinors]] {
        let defaults = UserDefaults.standard
        if let savedFavorites = defaults.object(forKey: favoritesKey) as? Data {
            let decoder = JSONDecoder()
            if let favorites = try? decoder.decode([String: [majorsMinors]].self, from: savedFavorites) {
                return favorites
            }
        }
        return [:]
    }

    func getFavorites(forUniversity university: College) -> [majorsMinors] {
        return getAllFavorites()[university.name] ?? []
    }
    
    func isFavorite(university: College, major: majorsMinors) -> Bool {
        return getFavorites(forUniversity: university).contains(where: { $0.name == major.name && $0.language == major.language && $0.level == major.level })
    }

    private func saveFavorites(_ favorites: [String: [majorsMinors]]) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(favorites) {
            let defaults = UserDefaults.standard
            defaults.set(encoded, forKey: favoritesKey)
        }
    }
}
