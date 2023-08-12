import Foundation

struct Requirements: Hashable, Codable {
    var term: String
    var percentage: Int?
    
    enum CodingKeys: String, CodingKey {
        case term
        case percentage
    }
}
