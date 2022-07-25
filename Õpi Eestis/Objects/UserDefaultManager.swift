import Foundation

class UserDefaultManager: ObservableObject {
    private func userDefaultKey(_ name: SchoolName) -> String {
        switch name {
        case .mainor: return "mainor.favorites"
        case .kunstiakadeemia: return "kunstakadeemia.favorites"
        case .lennuakadeemia: return "lennuakadeemia.favorites"
        case .maaülikool: return "maaülikool.favorites"
        case .teatriakadeemia: return "teatriakadeemia.favorites"
        case .ebs: return "ebs.favorites"
        case .kaitsevägi: return "kaitsevägi.favorites"
        case .pallas: return "pallas.favorites"
        case .sisekaitseakadeemia: return "sisekaitseakadeemia.favorites"
        case .ttk: return "ttk.favorites"
        case .taltech: return "taltech.favorites"
        case .tallinnaÜlikool: return "tallinnaÜlikool.favorites"
        case .tartuTervishoiuKõrgkool: return "tartuTervishoiuKõrgkool.favorites"
        case .tartuÜlikool: return "tartuÜlikool.favorites"
        case .tallinnaTervishoiuKõrgkool: return "tallinnaTervishoiuKõrgkool.favorites"
        }
    }
    
    func addFavorite(favorite: Favorites) {
        let decoder = JSONDecoder()
        let defaults = UserDefaults.standard
        let key = userDefaultKey(favorite.school.name)
        if let favorites = defaults.object(forKey: key) as? Data {
            
            if var favorites = try? decoder.decode(Favorites.self, from: favorites) {
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
    
    func removeFavorite(school: School, majorName: String) {
        let decoder = JSONDecoder()
        let defaults = UserDefaults.standard
        let key = userDefaultKey(school.name)
        if let favorites = defaults.object(forKey: key) as? Data {
            if let favorites = try? decoder.decode(Favorites.self, from: favorites) {
                let remainingMajors = favorites.majors.filter{ $0.name != majorName }
                let results = Favorites(school: school, majors: remainingMajors)
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
    
    func retrieveFavorites(school: SchoolName) -> [majorsMinors] {
        let decoder = JSONDecoder()
        let defaults = UserDefaults.standard
        let key = userDefaultKey(school)
        if let favorites = defaults.object(forKey: key) as? Data {
            if let favorites = try? decoder.decode(Favorites.self, from: favorites) {
                return favorites.majors
            } else {
                return []
            }
        } else {
           return []
        }
    }
    
    func retrieveAllFavorites() -> [Favorites] {
        let decoder = JSONDecoder()
        let defaults = UserDefaults.standard
        var allFavorites = [Favorites]()
        for item in SchoolName.allCases {
            let key = userDefaultKey(item)
            if let favorites = defaults.object(forKey: key) as? Data {
                if let favorite = try? decoder.decode(Favorites.self, from: favorites) {
                    allFavorites.append(favorite)
                } 
            }
        }
        return allFavorites
    }
    
    private func addToDatabase(favorites: Favorites, key: String) {
        if let encoded = try? JSONEncoder().encode(favorites) {
            UserDefaults.standard.set(encoded, forKey: key)
        }
    }
}
