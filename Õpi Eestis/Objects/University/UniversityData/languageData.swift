enum languagechoice: String, CaseIterable, Codable {
    case eesti = "eesti keel"
    case inglise = "inglise keel"
    case hispaania = "hispaania keel"
    case prantsuse = "prantsuse keel"
    case saksa = "saksa keel"
    case vene = "vene keel"
    
    var description: String {
        get {
            return self.rawValue
        }
    }
    
    var country: String {
        switch self {
        case .eesti:
            return OEAppearance.Locale.languages.estonian
        case .inglise:
            return OEAppearance.Locale.languages.english
        case .hispaania:
            return OEAppearance.Locale.languages.spanish
        case .prantsuse:
            return OEAppearance.Locale.languages.french
        case .saksa:
            return OEAppearance.Locale.languages.german
        case .vene:
            return OEAppearance.Locale.languages.russian
        }
    }
}
