import SwiftUI

enum Currency: String, Codable {
    case euro = "€"
    case dollar = "$"
    
    var icon: Image {
        switch self {
        case .euro:
            return .euroFill
        case .dollar:
            return .dollarSign
        }
    }
}
