enum levelchoice: String, CaseIterable, Codable{
    
    case applied = "rakenduskõrgharidus"
    case integrated = "integreeritud õpe"
    case bachelor = "bakalaureus"
    case masters = "magister"
    case doctor = "doktor"
    case kutseharidus = "kutseharidus"
    
    var description: String {
        get {
            return self.rawValue
        }
    }
}
