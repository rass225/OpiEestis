import Foundation

enum interval: String, Codable {
    case semester
    case year
    case full
    case eap
    
    var label: String {
        switch self {
        case .semester:
            return "/" + Theme.Locale.Interval.semester
        case .year:
            return "/" + Theme.Locale.Interval.year
        case .full:
            return ""
        case .eap:
            return "/" + Theme.Locale.Interval.eap
        }
    }
}
