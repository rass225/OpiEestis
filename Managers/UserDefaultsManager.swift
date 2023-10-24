import Foundation

class UserDefaultsManager {
    private let favoritesKey = "userFavorites"

    func addFavorite(university: College, major: Major) {
        var favorites = getAllFavorites()
        
        var universityFavorites = favorites[university.name] ?? []
        if !universityFavorites.contains(where: { $0.name == major.name && $0.language == major.language && $0.level == major.level }) {
            universityFavorites.append(major)
        }
        
        favorites[university.name] = universityFavorites
        saveFavorites(favorites)
    }

    func removeFavorite(university: College, major: Major) {
        var favorites = getAllFavorites()
        
        if var universityFavorites = favorites[university.name] {
            universityFavorites.removeAll { $0.name == major.name && $0.language == major.language && $0.level == major.level }
            favorites[university.name] = universityFavorites.isEmpty ? nil : universityFavorites
        } else {
            print("MV")
        }

        saveFavorites(favorites)
    }

    func getAllFavorites() -> [String: [Major]] {
        let defaults = UserDefaults.standard
        if let savedFavorites = defaults.object(forKey: favoritesKey) as? Data {
            let decoder = JSONDecoder()
            if let favorites = try? decoder.decode([String: [Major]].self, from: savedFavorites) {
                return favorites
            }
        }
        return [:]
    }

    func getFavorites(forUniversity university: College) -> [Major] {
        let allFavorites = getAllFavorites()
        let collegeFavorites = allFavorites[university.name]
        return collegeFavorites ?? []
    }
    
    func isFavorite(university: College, major: Major) -> Bool {
        return getFavorites(forUniversity: university).contains(where: { $0.name == major.name && $0.language == major.language && $0.level == major.level })
    }

    private func saveFavorites(_ favorites: [String: [Major]]) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(favorites) {
            let defaults = UserDefaults.standard
            defaults.set(encoded, forKey: favoritesKey)
        }
    }
}
