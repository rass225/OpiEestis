import Foundation

struct SubSubmodule: Hashable, Codable {
    var name: String
    var courses: [Course]
    var submodule: [SubSubSubmodule]?
    
    enum CodingKeys: String, CodingKey {
        case name
        case courses
        case submodule
    }
}

struct SubSubSubmodule: Hashable, Codable {
    var name: String
    var courses: [Course]
    
    enum CodingKeys: String, CodingKey {
        case name
        case courses
    }
}
