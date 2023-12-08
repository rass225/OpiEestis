import Foundation
import FirebaseFirestore

struct FirebaseUser: Codable, Hashable, Equatable {
    let id: String
    let firstName: String
    let lastName: String
    let email: String
    let photoUrl: String?
    let nationality: Nationality
    let dateJoined: String
    
    static func initial(
        id: String,
        email: String
    ) -> FirebaseUser {
        return .init(
            id: id,
            firstName: "",
            lastName: "",
            email: email,
            photoUrl: nil,
            nationality: .init(name: "Estonia", symbol: "🇪🇪"),
            dateJoined: Date().dateAndTimeString
        )
    }
}
