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
    
    var label: LocalizedStringKey {
        switch self {
        case .estonian: return Theme.Locale.Language.estonian
        case .english: return Theme.Locale.Language.english
        case .spanish: return Theme.Locale.Language.spanish
        case .french: return Theme.Locale.Language.french
        case .german: return Theme.Locale.Language.german
        case .russian: return Theme.Locale.Language.russian
        case .all: return Theme.Locale.Language.all
        }
    }
    
    var inLanguageLabel: LocalizedStringKey {
        switch self {
        case .estonian: return Theme.Locale.Language.inEstonian
        case .english: return Theme.Locale.Language.inEnglish
        case .spanish: return Theme.Locale.Language.inSpanish
        case .french: return Theme.Locale.Language.inFrench
        case .german: return Theme.Locale.Language.inGerman
        case .russian: return Theme.Locale.Language.inRussian
        case .all: return Theme.Locale.Language.all
        }
    }
    
    init?(from string: String) {
        guard let value = Language(rawValue: string) else { return nil }
        self = value
    }
}
