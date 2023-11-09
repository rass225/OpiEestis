import Foundation
import SwiftUI

enum Language: String, Codable, CaseIterable {
    case estonian = "eesti keel"
    case english = "inglise keel"
    case spanish = "hispaania keel"
    case french = "prantsuse keel"
    case german = "saksa keel"
    case russian = "vene keel"
    case all = "aaa"
    
    var symbol: String {
        switch self {
        case .estonian: return "🇪🇪"
        case .english: return "🇬🇧"
        case .spanish: return "🇪🇸"
        case .french: return "🇫🇷"
        case .german: return "🇩🇪"
        case .russian: return "🇷🇺"
        case .all: return ""
        }
    }
    
    var label: String {
        switch self {
        case .estonian: return "Eesti keel"
        case .english: return "Inglise keel"
        case .spanish: return "Hispaania keel"
        case .french: return "Prantsuse keel"
        case .german: return "Saksa keel"
        case .russian: return "Vene keel"
        case .all: return "Kõik"
        }
    }
    
    var inLanguageLabel: LocalizedStringKey {
        switch self {
        case .estonian: return "Eesti keeles"
        case .english: return "Inglise keeles"
        case .spanish: return "Hispaania keeles"
        case .french: return "Prantsuse keeles"
        case .german: return "Saksa keeles"
        case .russian: return "Vene keeles"
        case .all: return "Kõik"
        }
    }
    
    init?(from string: String) {
        guard let value = Language(rawValue: string) else { return nil }
        self = value
    }
}
