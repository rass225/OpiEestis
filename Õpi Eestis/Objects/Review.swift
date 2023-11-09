import SwiftUI

struct Review: Codable {
    var id: String
    let user: FirebaseUser
    let text: String?
    let rating: Int
    let date: Date
}
