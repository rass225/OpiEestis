enum Level: String, CaseIterable, Codable{
    case applied = "rakenduskõrgharidus"
    case integrated = "integreeritud õpe"
    case bachelor = "bakalaureus"
    case masters = "magister"
    case doctor = "doktor"
    case vocational = "kutseharidus"
    case all = "Kõik"
    
    var label: String {
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
}
