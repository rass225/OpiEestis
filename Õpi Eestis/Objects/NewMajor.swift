import SwiftUI

struct NewMajor: Hashable, Codable, Identifiable {
    var id: String
    var collegeId: String
    var name: String
    var nameEn: String?
    var level: Level
    var language: Language
    var languages: [Language]?
    var majorWebsite: String
    var description: [String]
    var descriptionEn: String?
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
    var studyTypes: [StudyType]?
    var videoId: String?
    var vimeoId: String?
    var spotifyPath: String?
    var facebookWatchId: String?
    
    func hasEap() -> Bool {
        guard eap != nil else { return false }
        return true
    }
    
    var durationLabel: LocalizedStringKey {
        Theme.Locale.Duration.getYears(amount: duration)
    }
    
    var costLabel: LocalizedStringKey {
        cost.amount == 0 ? Theme.Locale.Majors.free : Theme.Locale.Majors.paid
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
    
    var eapLocale: LocalizedStringKey {
        hasEap() ? Theme.Locale.Major.eap : Theme.Locale.Major.ekap
    }
}
