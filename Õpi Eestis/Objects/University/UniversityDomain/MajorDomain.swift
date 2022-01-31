import Foundation
import SwiftUI

struct majorsMinors: Hashable, Codable, Identifiable {
    var id = UUID()
    var name: String //
    var level: levelchoice //
    var type: typechoice //
    var requirements: [Requirements]
    var description: [String]
    var outcomes: [String]
    var language: languagechoice
    var majorWebsite: String
    var spots: Int
    var duration: Double
    var studyLocation: [city]
    var eap: Int?
    var ekap: Int?
    var cost: Cost
    var modules: [Module]?
    var personnel: [Personnel]?
    
    func toExtra() {
        guard let url = URL(string: majorWebsite as String) else { return }
        UIApplication.shared.open(url)
    }
    
    func hasModules() -> Bool {
        guard modules != nil else { return false }
        return true
    }
    
    func hasPersonnel() -> Bool {
        guard personnel != nil else { return false }
        return true
    }
    
    func hasEap() -> Bool {
        guard eap != nil else { return false }
        return true
    }
    
    func isFavorite(school: School) -> Bool {
        
        let decoder = JSONDecoder()
        let defaults = UserDefaults.standard
        let key = userDefaultKey(school.name)
        if let favorites = defaults.object(forKey: key) as? Data {
            if let favorites = try? decoder.decode(Favorites.self, from: favorites) {
                let schoolFavorites: [majorsMinors]
                schoolFavorites = favorites.majors
                if schoolFavorites.contains(self) {
                    return true
                } else {
                    return false
                }
            } else {
                return false
            }
        } else {
            return false
        }
    }
    
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
}

