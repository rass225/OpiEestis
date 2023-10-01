import Foundation
import SwiftUI
import MapKit

struct College: Codable, Hashable, Identifiable {
    let id: String
    let name: String
    var branches: [CollegeLocation]
    let contact: CollegeContact
    var description: String
    let imageRefs: [String]
    let internationalStudents: Int
    let links: [CollegeLink]
    let location: CollegeLocation
    let logoRef: String
    let logoModifiable: Bool
    let palette: CollegePalette
    let admission: [String]
    let students: Int
    let website: String
    let worldRanking: Int
    let jsonKeys: JSONKeys
    
    var jsonString: String {
        switch name {
        case "Eesti Ettevõtluskõrgkool Mainor":
            return "Mainor"
        case "Eesti Kunstiakadeemia":
            return "Kunstiakadeemia"
        case "Eesti Lennuakadeemia":
            return "Lennuakadeemia"
        case "Eesti Maaülikool":
            return "EMU"
        case "Eesti Muusika- ja Teatriakadeemia":
            return "Muusikaakadeemia"
        case "Estonian Business School":
            return "EBS"
        case "Kaitseväe Akadeemia":
            return "Kaitsevägi"
        case "Kõrgem Kunstikool Pallas":
            return "Pallas"
        case "Sisekaitseakadeemia":
            return "Sisekaitseakadeemia"
        case "Tallinna Tehnikakõrgkool":
            return "TTK"
        case "Tallinna Tehnikaülikool":
            return "TTÜ"
        case "Tallinna Ülikool":
            return "TLÜ"
        case "Tartu Tervishoiu Kõrgkool":
            return "TartuTervishoid"
        case "Tartu Ülikool":
            return "TÜ"
        case "Tallinna Tervishoiu Kõrgkool":
            return "TallinnaTervishoid"
        case "Tallinna Majanduskool":
            return "TallinnaMajanduskool"
        case "Ida-Virumaa Kutsehariduskeskus":
            return "IdaVirumaaKutsehariduskeskus"
        default:
            return ""
        }
    }
    
    enum CodingKeys: String, CodingKey {
        case id,
             name,
             branches,
             contact,
             description,
             imageRefs,
             internationalStudents,
             links,
             location,
             logoRef,
             palette,
             admission,
             students,
             website,
             worldRanking,
             jsonKeys,
             logoModifiable
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(String.self, forKey: .id)
        name = try values.decode(String.self, forKey: .name)
        branches = try values.decode([CollegeLocation].self, forKey: .branches)
        contact = try values.decode(CollegeContact.self, forKey: .contact)
        description = try values.decode(String.self, forKey: .description)
        description = description.replacingOccurrences(of: "\\n", with: "\n")
        imageRefs = try values.decode([String].self, forKey: .imageRefs)
        internationalStudents = try values.decode(Int.self, forKey: .internationalStudents)
        links = try values.decode([CollegeLink].self, forKey: .links)
        location = try values.decode(CollegeLocation.self, forKey: .location)
        logoRef = try values.decode(String.self, forKey: .logoRef)
        palette = try values.decode(CollegePalette.self, forKey: .palette)
        admission = try values.decode([String].self, forKey: .admission)
        students = try values.decode(Int.self, forKey: .students)
        website = try values.decode(String.self, forKey: .website)
        worldRanking = try values.decode(Int.self, forKey: .worldRanking)
        jsonKeys = try values.decode(JSONKeys.self, forKey: .jsonKeys)
        logoModifiable = try values.decode(Bool.self, forKey: .logoModifiable)
    }
}

struct CollegeContact: Codable, Equatable, Hashable {
    let address: String
    let phoneNumber: String
    let email: String
}

struct JSONKeys: Codable, Equatable, Hashable {
    let favorites: String
}
