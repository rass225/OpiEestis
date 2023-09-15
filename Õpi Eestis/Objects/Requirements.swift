import Foundation

struct Requirements: Hashable, Codable {
    var term: String
    var percentage: Int?
    var header: String?
    
    enum CodingKeys: String, CodingKey {
        case term
        case percentage
        case header
    }
}
