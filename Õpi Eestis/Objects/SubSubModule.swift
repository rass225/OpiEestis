import Foundation

struct SubSubmodule: Hashable, Codable {
    var name: String
    var courses: [Course]
    
    enum CodingKeys: String, CodingKey {
        case name
        case courses
    }
}
