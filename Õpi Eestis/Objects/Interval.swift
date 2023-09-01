import Foundation

enum interval: String, Codable {
    case semester
    case year
    case full
    case eap
    
    var label: String {
        switch self {
        case .semester:
            return " / " + OEAppearance.Locale.semester
        case .year:
            return " / " + OEAppearance.Locale.year
        case .full:
            return ""
        case .eap:
            return " / " + OEAppearance.Locale.eap
        }
    }
}
