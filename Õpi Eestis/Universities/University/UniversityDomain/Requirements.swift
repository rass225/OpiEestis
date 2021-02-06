import Foundation

struct Requirements: Hashable, Codable, Identifiable {
    var id = UUID()
    var term: String
    var percentage: Int?
}
