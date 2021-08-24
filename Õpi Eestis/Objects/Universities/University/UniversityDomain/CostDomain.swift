struct Cost: Hashable, Codable {
    var amount: Int
    var currency: currency
    var interval: interval 
}

enum currency: String, Codable {
    case euro = "€"
    case dollar = "$"
}

enum interval: String, Codable {
    case semester
    case year
    case full
    case eap
}
