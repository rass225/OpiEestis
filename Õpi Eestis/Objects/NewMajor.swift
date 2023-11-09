import SwiftUI

struct NewMajor: Hashable, Codable, Identifiable {
    var id: String
    var collegeId: String
    var name: String
    var level: Level
    var language: Language
    var majorWebsite: String
    var description: [String]
    var spots: Int
    var duration: Double
    var studyLocation: [City]
    var eap: Int?
    var ekap: Int?
    var cost: Cost
    var curriculumRef: String?
    var isEnglishOnly: Bool?
    var curriculumDate: String?
    var studyType: String?
    var videoId: String?
    var vimeoId: String?
    var spotifyPath: String?
    var facebookWatchId: String?
    
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
        hasEap() ? Theme.Locale.Major.eap : Theme.Locale.Major.ekap
    }
}
