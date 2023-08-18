import Foundation
import SwiftUI

struct majorsMinors: Hashable, Codable {
    var name: String
    var level: levelchoice
    var type: typechoice
    var requirements: [Requirements]
    var description: [String]
    var outcomes: [String]?
    var language: Language
    var majorWebsite: String
    var spots: Int
    var duration: Double
    var studyLocation: [city]
    var eap: Int?
    var ekap: Int?
    var cost: Cost
    var modules: [Module]?
    var personnel: [Personnel]?
    var curriculumRef: String?
    
    enum CodingKeys: String, CodingKey {
        case name
        case level
        case type
        case requirements
        case description
        case outcomes
        case language
        case majorWebsite
        case spots
        case duration
        case studyLocation
        case eap
        case ekap
        case cost
        case modules
        case personnel
        case curriculumRef
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.level = try container.decode(levelchoice.self, forKey: .level)
        self.type = try container.decode(typechoice.self, forKey: .type)
        self.requirements = try container.decode([Requirements].self, forKey: .requirements)
        self.description = try container.decode([String].self, forKey: .description)
        description = description.map { $0.replacingOccurrences(of: "\\n", with: "\n") }
        self.outcomes = try container.decodeIfPresent([String].self, forKey: .outcomes)
//        outcomes = outcomes.map { $0.replacingOccurrences(of: "\r\n-", with: "\n\n**•**") }
        self.language = try container.decode(Language.self, forKey: .language)
        self.majorWebsite = try container.decode(String.self, forKey: .majorWebsite)
        self.spots = try container.decode(Int.self, forKey: .spots)
        self.duration = try container.decode(Double.self, forKey: .duration)
        self.studyLocation = try container.decode([city].self, forKey: .studyLocation)
        self.eap = try container.decodeIfPresent(Int.self, forKey: .eap)
        self.ekap = try container.decodeIfPresent(Int.self, forKey: .ekap)
        self.cost = try container.decode(Cost.self, forKey: .cost)
        self.modules = try container.decodeIfPresent([Module].self, forKey: .modules)
        self.personnel = try container.decodeIfPresent([Personnel].self, forKey: .personnel)
        self.curriculumRef = try container.decodeIfPresent(String.self, forKey: .curriculumRef)
    }
    
    func toExtra() {
        guard let url = URL(string: majorWebsite as String) else { return }
        UIApplication.shared.open(url)
    }
    
    func hasPersonnel() -> Bool {
        guard personnel != nil else { return false }
        return true
    }
    
    func hasEap() -> Bool {
        guard eap != nil else { return false }
        return true
    }
    
    var eapString: String {
        if let eap = eap {
            return String(eap)
        } else if let ekap = ekap {
            return String(ekap)
        } else {
            return ""
        }
    }
    
    var eapLocale: String {
        hasEap() ? OEAppearance.Locale.eap : OEAppearance.Locale.ekap
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

enum Language: String, Codable, CaseIterable {
    case estonian = "eesti keel"
    case english = "inglise keel"
    case spanish = "hispaania keel"
    case french = "prantsuse keel"
    case german = "saksa keel"
    case russian = "vene keel"
    
    var symbol: String {
        switch self {
        case .estonian: return "🇪🇪"
        case .english: return "🇬🇧"
        case .spanish: return "🇪🇸"
        case .french: return "🇫🇷"
        case .german: return "🇩🇪"
        case .russian: return "🇷🇺"
        }
    }
    
    var label: String {
        switch self {
        case .estonian: return "Eesti keel"
        case .english: return "Inglise Keel"
        case .spanish: return "Hispaania kell"
        case .french: return "Prantsuse keel"
        case .german: return "Saksa keel"
        case .russian: return "Vene keel"
        }
    }
    
    init?(from string: String) {
        guard let value = Language(rawValue: string) else { return nil }
        self = value
    }
}
