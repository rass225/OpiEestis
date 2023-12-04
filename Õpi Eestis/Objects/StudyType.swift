import Foundation
import SwiftUI

enum StudyType: String, Codable {
    case regular = "päevaõpe"
    case cyclical = "sessioonõpe"
    case apprenticeship = "õpipoisiõpe"
    case evening = "õhtuõpe"
    case remote = "kaugõpe"
    
    var label: LocalizedStringKey {
        switch self {
        case .regular:
            return Theme.Locale.StudyType.regular
        case .cyclical:
            return Theme.Locale.StudyType.cyclical
        case .apprenticeship:
            return Theme.Locale.StudyType.apprenticeship
        case .evening:
            return Theme.Locale.StudyType.evening
        case .remote:
            return Theme.Locale.StudyType.remote
        }
    }
}
