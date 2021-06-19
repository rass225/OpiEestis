import Foundation

struct School: Hashable, Codable, Identifiable {
    var id = UUID()
    var name: SchoolName
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

struct SchoolOverview: Hashable, Codable, Identifiable {
    var id = UUID()
    var name: SchoolName
    var databaseId: Int
    var logo: String
    var city: String
}

enum SchoolName: String, Codable {
    case mainor = "Eesti Ettevõtluskõrgkool Mainor"
    case kunstiakadeemia = "Eesti Kunstiakadeemia"
    case lennuakadeemia = "Eesti Lennuakadeemia"
    case maaülikool = "Eesti Maaülikool"
    case teatriakadeemia = "Eesti Muusika- ja Teatriakadeemia"
    case ebs = "Estonian Business School"
    case kaitsevägi = "Kaitseväe Akadeemia"
    case pallas = "Kõrgem Kunstikool Pallas"
    case sisekaitseakadeemia = "Sisekaitseakadeemia"
    case ttk = "Tallinna Tehnikakõrgkool"
    case taltech = "Tallinna Tehnikaülikool"
    case tallinnaÜlikool = "Tallinna Ülikool"
    case tartuTervishoiuKõrgkool = "Tartu Tervishoiu Kõrgkool"
    case tartuÜlikool = "Tartu Ülikool"
    case tallinnaTervishoiuKõrgkool = "Tallinna Tervishoiu Kõrgkool"
}
