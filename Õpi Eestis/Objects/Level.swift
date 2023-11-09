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
        case .applied: return "Rakenduskõrgharidus"
        case .integrated: return "Integreeritud õpe"
        case .bachelor: return "Bakalaureus"
        case .masters: return "Magister"
        case .doctor: return "Doktor"
        case .vocational: return "Kutseharidus"
        case .all: return "Kõik"
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
