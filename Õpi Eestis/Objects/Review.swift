import SwiftUI

struct Review: Codable {
    let id: String
    let userId: String
    let userPhotoUrl: String
    let text: String
    let date: Date
}
