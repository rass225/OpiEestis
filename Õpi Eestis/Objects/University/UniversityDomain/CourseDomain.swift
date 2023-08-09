import Foundation

struct Module: Hashable, Codable, Identifiable  {
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

struct Submodule: Hashable, Codable, Identifiable  {
    var id = UUID()
    var name: String
    var courses: [Course]
    var submodules: [SubSubmodule]?
    
    enum CodingKeys: String, CodingKey {
        case name
        case courses
        case submodules
    }
}

struct SubSubmodule: Hashable, Codable, Identifiable {
    var id = UUID()
    var name: String
    var courses: [Course]
    
    enum CodingKeys: String, CodingKey {
        case name
        case courses
    }
}

struct Course: Hashable, Codable, Identifiable  {
    var id = UUID()
    var name: String
    var eapCount: Double
    
    enum CodingKeys: String, CodingKey {
        case name
        case eapCount
    }
}
