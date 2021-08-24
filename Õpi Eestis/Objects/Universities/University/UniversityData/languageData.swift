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
    
}
