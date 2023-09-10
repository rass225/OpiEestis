import Foundation

struct Module: Hashable, Codable, Equatable {
    var name: String
    var courses: [Course]
    var submodules: [Submodule]?
    
    enum CodingKeys: String, CodingKey {
        case name
        case courses
        case submodules
    }
}
