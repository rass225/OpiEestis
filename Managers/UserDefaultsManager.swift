import Foundation

struct UserDefaultsManager {
    func addFavorite(favorite: CollegeFavorite, key: String) {
        let decoder = JSONDecoder()
        let defaults = UserDefaults.standard
        if let favorites = defaults.object(forKey: key) as? Data {
            
            if var favorites = try? decoder.decode(CollegeFavorite.self, from: favorites) {
                if !favorites.majors.contains(favorite.majors[0]) {
                    for item in favorite.majors {
                        favorites.majors.append(item)
                    }
                    addToDatabase(favorites: favorites, key: key)
                }
            }
        } else {
            addToDatabase(favorites: favorite, key: key)
        }
    }
    
    func removeFavorite(college: College, majorName: String, key: String) {
        let decoder = JSONDecoder()
        let defaults = UserDefaults.standard
        let key = college.jsonKeys.favorites
        if let favorites = defaults.object(forKey: key) as? Data {
            if let favorites = try? decoder.decode(CollegeFavorite.self, from: favorites) {
                let remainingMajors = favorites.majors.filter{ $0.name != majorName }
                let results = CollegeFavorite(college: college, majors: remainingMajors)
                if results.majors.isEmpty {
                    defaults.removeObject(forKey: key)
                } else {
                    addToDatabase(favorites: results, key: key)
                }
            }
        } else {
           print("Failed removing favorite")
        }
    }
    
    func retrieveFavorites(college: College) -> [majorsMinors] {
        let decoder = JSONDecoder()
        let defaults = UserDefaults.standard
        let key = college.jsonKeys.favorites
        if let favorites = defaults.object(forKey: key) as? Data {
            if let favorites = try? decoder.decode(CollegeFavorite.self, from: favorites) {
                return favorites.majors
            } else {
                return []
            }
        } else {
           return []
        }
    }
    
    func retrieveAllFavorites(colleges: [College]) -> [CollegeFavorite] {
        let decoder = JSONDecoder()
        let defaults = UserDefaults.standard
        var allFavorites = [CollegeFavorite]()
        for item in colleges {
            let key = item.jsonKeys.favorites
            if let favorites = defaults.object(forKey: key) as? Data {
                if let favorite = try? decoder.decode(CollegeFavorite.self, from: favorites) {
                    allFavorites.append(favorite)
                }
            }
        }
        return allFavorites
    }
    
    private func addToDatabase(favorites: CollegeFavorite, key: String) {
        if let encoded = try? JSONEncoder().encode(favorites) {
            UserDefaults.standard.set(encoded, forKey: key)
        }
    }
}
