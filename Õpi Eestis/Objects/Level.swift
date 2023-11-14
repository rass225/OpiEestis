import Foundation
import SwiftUI

enum Level: String, CaseIterable, Codable, Comparable {
    case applied = "rakenduskõrgharidus"
    case integrated = "integreeritud õpe"
    case bachelor = "bakalaureus"
    case masters = "magister"
    case doctor = "doktor"
    case vocational = "kutseharidus"
    case all = "Kõik"
    
    var label: LocalizedStringKey {
        switch self {
        case .applied: return Theme.Locale.Level.applied
        case .integrated: return Theme.Locale.Level.integrated
        case .bachelor: return Theme.Locale.Level.bachelors
        case .masters: return Theme.Locale.Level.masters
        case .doctor: return Theme.Locale.Level.doctorate
        case .vocational: return Theme.Locale.Level.vocational
        case .all: return Theme.Locale.Level.all
        }
    }
    
    static func < (lhs: Level, rhs: Level) -> Bool {
        let order: [Level] = [.vocational, .applied, .bachelor, .integrated, .masters, .doctor]
        guard let lhsOrder = order.firstIndex(of: lhs), let rhsOrder = order.firstIndex(of: rhs) else {
            return false
        }
        return lhsOrder < rhsOrder
    }
}
