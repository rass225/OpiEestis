import Foundation

struct Course: Hashable, Codable {
    var name: String
    var eapCount: Double
    
    enum CodingKeys: String, CodingKey {
        case name
        case eapCount
    }
}
