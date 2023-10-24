import Foundation

struct Personnel: Hashable, Codable, Identifiable {
    var id = UUID()
    var name: String
    var title: String
    var email: String?
    var phone: String?
    var photo: String?
    
    enum CodingKeys: String, CodingKey {
        case name
        case title
        case email
        case phone
        case photo
    }
}
