import Foundation

struct Requirements: Hashable, Codable, Identifiable {
    var id = UUID()
    var term: String
    var termEn: String?
    var percentage: Int?
    var header: String?
    var headerEn: String?
    
    enum CodingKeys: String, CodingKey {
        case term
        case percentage
        case header
        case termEn
        case headerEn
    }
}
