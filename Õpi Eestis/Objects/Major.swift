import SwiftUI

struct Major: Hashable, Codable {
    var id: String?
    var name: String
    var level: Level
    var type: String
    var requirements: [Requirements]
    var description: [String]
    var outcomes: [String]?
    var language: Language
    var majorWebsite: String
    var spots: Int
    var duration: Double
    var studyLocation: [City]
    var eap: Int?
    var ekap: Int?
    var cost: Cost
    var modules: [Module]?
    var personnel: [Personnel]?
    var curriculumRef: String?
    var isEnglishOnly: Bool?
    var curriculumDate: String?
    var studyType: String?
    var videoId: String?
    
    enum CodingKeys: String, CodingKey {
        case id
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
        case isEnglishOnly
        case studyType
        case videoId
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.level = try container.decode(Level.self, forKey: .level)
        self.type = try container.decode(String.self, forKey: .type)
        self.requirements = try container.decode([Requirements].self, forKey: .requirements)
        self.description = try container.decode([String].self, forKey: .description)
        description = description.map { $0.replacingOccurrences(of: "\\n", with: "\n") }
        self.outcomes = try container.decodeIfPresent([String].self, forKey: .outcomes)
//        outcomes = outcomes.map { $0.replacingOccurrences(of: "\r\n-", with: "\n\n**•**") }
        self.language = try container.decode(Language.self, forKey: .language)
        self.majorWebsite = try container.decode(String.self, forKey: .majorWebsite)
        self.spots = try container.decode(Int.self, forKey: .spots)
        self.duration = try container.decode(Double.self, forKey: .duration)
        self.studyLocation = try container.decode([City].self, forKey: .studyLocation)
        self.eap = try container.decodeIfPresent(Int.self, forKey: .eap)
        self.ekap = try container.decodeIfPresent(Int.self, forKey: .ekap)
        self.cost = try container.decode(Cost.self, forKey: .cost)
        self.modules = try container.decodeIfPresent([Module].self, forKey: .modules)
        self.personnel = try container.decodeIfPresent([Personnel].self, forKey: .personnel)
        self.curriculumRef = try container.decodeIfPresent(String.self, forKey: .curriculumRef)
        self.isEnglishOnly = try container.decodeIfPresent(Bool.self, forKey: .isEnglishOnly)
        self.studyType = try container.decodeIfPresent(String.self, forKey: .studyType)
        self.videoId = try container.decodeIfPresent(String.self, forKey: .videoId)
    }
    
    func hasEap() -> Bool {
        guard eap != nil else { return false }
        return true
    }
    
    var durationLabel: String {
        "\(duration.formattedDecimals(1)) \(duration == 1.0 ? "aasta" : "aastat")"
    }
    
    var costLabel: String {
        cost.amount == 0 ? "Tasuta" : "€€€"
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
}
