import SwiftUI

struct Cost: Hashable, Codable {
    var amount: Int
    var currency: currency
    var interval: interval 
}

enum currency: String, Codable {
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
