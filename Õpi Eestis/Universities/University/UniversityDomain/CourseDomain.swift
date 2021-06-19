import Foundation

struct Module: Hashable, Codable, Identifiable  {
    var id = UUID()
    var module: String
    var courses: [Course]
    var submodules: [Submodule]?
}

struct Submodule: Hashable, Codable, Identifiable  {
    var id = UUID()
    var name: String
    var courses: [Course]
}

struct Course: Hashable, Codable, Identifiable  {
    var id = UUID()
    var name: String
    var eapCount: Double
}
