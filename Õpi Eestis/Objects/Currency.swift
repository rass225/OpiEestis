import SwiftUI

enum Currency: String, Codable {
    case euro = "€"
    case dollar = "$"
    
    var icon: Image {
        switch self {
        case .euro:
            return Theme.Icons.euro
        case .dollar:
            return Theme.Icons.dollar
        }
    }
}
