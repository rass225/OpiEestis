import Foundation

struct Personnel: Hashable, Codable, Identifiable{
    var id = UUID()
    var name: String
    var title: String
    var email: String?
    var phone: String?
    var photo: String?
}
