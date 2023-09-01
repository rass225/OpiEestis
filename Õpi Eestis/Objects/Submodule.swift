import Foundation

struct Submodule: Hashable, Codable {
    var name: String
    var courses: [Course]
    var submodules: [SubSubmodule]?
    
    enum CodingKeys: String, CodingKey {
        case name
        case courses
        case submodules
    }
}
