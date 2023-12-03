import Foundation

struct Requirements: Hashable, Codable, Identifiable {
    var id = UUID()
    var header: String?
    var headerEn: String?
    var orderNr: Int?
    var percentage: Int?
    var term: String
    var termEn: String?
    
    enum CodingKeys: String, CodingKey {
        case term
        case percentage
        case header
        case termEn
        case headerEn
        case orderNr
    }
}
