import Foundation

struct Module: Hashable, Codable, Equatable, Identifiable {
    var id = UUID()
    var name: String
    var courses: [Course]
    var submodules: [Submodule]?
    
    enum CodingKeys: String, CodingKey {
        case name
        case courses
        case submodules
    }
}

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
