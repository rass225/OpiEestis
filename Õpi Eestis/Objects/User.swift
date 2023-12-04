import Foundation

struct FirebaseUser: Codable, Hashable, Equatable {
    let id: String
    let firstName: String?
    let lastName: String?
    let email: String?
    let photoUrl: String?
    let dateJoined: Date?
    
    static func initial(
        id: String,
        email: String?,
        dateJoined: Date
    ) -> FirebaseUser {
        return .init(
            id: id,
            firstName: nil,
            lastName: nil,
            email: email,
            photoUrl: nil,
            dateJoined: .now
        )
    }
}
