import Foundation

struct School: Hashable, Codable, Identifiable {
    var id = UUID()
    var name: String
    var description: [String]
    var location: Location
    var website: String
    var students: Int
    
    var contact: ContactInfo
    var socialMedia: [SocialMedia]
    var logo: String
    var image: String
    var internationalStudents: Int
    var worldRanking: Int
    var vastuvõtt: [String]
    var education: [majorsMinors]
}
