import Foundation
import SwiftUI
import MapKit

struct School: Hashable, Codable, Identifiable {
    var id = UUID()
    var name: SchoolName
    var description: [String]
    var location: Location
    var website: String
    var students: Int
    
    var contact: ContactInfo
    var socialMedia: [SocialMedia]
    var logo: logo
    var image: schoolImage
    var imageUrls: [String]
    var internationalStudents: Int
    var worldRanking: Int
    var vastuvõtt: [String]
    
    var color: Color {
        switch name {
        case .ebs: return .SchoolThemes.EBS.base
        case .kaitsevägi: return .SchoolThemes.Kaitsevägi.base
        case .kunstiakadeemia: return .SchoolThemes.EKA.base
        case .lennuakadeemia: return .SchoolThemes.Lennuakadeemia.base
        case .maaülikool: return .SchoolThemes.EMÜ.base
        case .mainor: return .SchoolThemes.Mainor.base
        case .pallas: return .SchoolThemes.Pallas.base
        case .sisekaitseakadeemia: return .SchoolThemes.Sisekaitse.base
        case .tallinnaTervishoiuKõrgkool: return .oeBlue
        case .tallinnaÜlikool: return .SchoolThemes.TLÜ.base
        case .taltech: return .SchoolThemes.TalTech.base
        case .tartuTervishoiuKõrgkool: return .SchoolThemes.TartuTervishoid.base
        case .tartuÜlikool: return .SchoolThemes.TÜ.base
        case .teatriakadeemia: return .SchoolThemes.MuusikaAkadeemia.base
        case .ttk: return .SchoolThemes.TTK.base
        }
    }
    
    var levels: LevelColors {
        let themes = Color.SchoolThemes.self
      
        switch name {
        case .ebs:
            return LevelColors(
                bachelor: themes.EBS.bachelor,
                master: themes.EBS.masters,
                doctor: themes.EBS.doctor,
                applied: themes.EBS.rakendus,
                kutse: themes.EBS.kutse
            )
        case .kaitsevägi:
            return LevelColors(
                bachelor: themes.Kaitsevägi.bachelor,
                master: themes.Kaitsevägi.masters,
                doctor: themes.Kaitsevägi.doctor,
                applied: themes.Kaitsevägi.rakendus,
                kutse: themes.Kaitsevägi.kutse
            )
        case .kunstiakadeemia:
            return LevelColors(
                bachelor: themes.EKA.bachelor,
                master: themes.EKA.masters,
                doctor: themes.EKA.doctor,
                applied: themes.EKA.rakendus,
                kutse: themes.EKA.kutse
            )
        case .lennuakadeemia:
            return LevelColors(
                bachelor: themes.Lennuakadeemia.bachelor,
                master: themes.Lennuakadeemia.masters,
                doctor: themes.Lennuakadeemia.doctor,
                applied: themes.Lennuakadeemia.rakendus,
                kutse: themes.Lennuakadeemia.kutse
            )
        case .maaülikool:
            return LevelColors(
                bachelor: themes.EMÜ.bachelor,
                master: themes.EMÜ.masters,
                doctor: themes.EMÜ.doctor,
                applied: themes.EMÜ.rakendus,
                kutse: themes.EMÜ.kutse
            )
        case .mainor:
            return LevelColors(
                bachelor: themes.Mainor.bachelor,
                master: themes.Mainor.masters,
                doctor: themes.Mainor.doctor,
                applied: themes.Mainor.rakendus,
                kutse: themes.Mainor.kutse
            )
        case .pallas:
            return LevelColors(
                bachelor: themes.Pallas.bachelor,
                master: themes.Pallas.masters,
                doctor: themes.Pallas.doctor,
                applied: themes.Pallas.rakendus,
                kutse: themes.Pallas.kutse
            )
        case .sisekaitseakadeemia:
            return LevelColors(
                bachelor: themes.Sisekaitse.bachelor,
                master: themes.Sisekaitse.masters,
                doctor: themes.Sisekaitse.doctor,
                applied: themes.Sisekaitse.rakendus,
                kutse: themes.Sisekaitse.kutse
            )
        case .tallinnaTervishoiuKõrgkool:
            return LevelColors(
                bachelor: themes.TLÜ.bachelor,
                master: themes.TLÜ.masters,
                doctor: themes.TLÜ.doctor,
                applied: themes.TLÜ.rakendus,
                kutse: themes.TLÜ.kutse
            )
        case .tallinnaÜlikool:
            return LevelColors(
                bachelor: themes.TLÜ.bachelor,
                master: themes.TLÜ.masters,
                doctor: themes.TLÜ.doctor,
                applied: themes.TLÜ.rakendus,
                kutse: themes.TLÜ.kutse
            )
        case .taltech:
            return LevelColors(
                bachelor: themes.TalTech.bachelor,
                master: themes.TalTech.masters,
                doctor: themes.TalTech.doctor,
                applied: themes.TalTech.rakendus,
                kutse: themes.TalTech.kutse
            )
        case .tartuTervishoiuKõrgkool:
            return LevelColors(
                bachelor: themes.TartuTervishoid.bachelor,
                master: themes.TartuTervishoid.masters,
                doctor: themes.TartuTervishoid.doctor,
                applied: themes.TartuTervishoid.rakendus,
                kutse: themes.TartuTervishoid.kutse
            )
        case .tartuÜlikool:
            return LevelColors(
                bachelor: themes.TÜ.bachelor,
                master: themes.TÜ.masters,
                doctor: themes.TÜ.doctor,
                applied: themes.TÜ.rakendus,
                kutse: themes.TÜ.kutse
            )
        case .teatriakadeemia:
            return LevelColors(
                bachelor: themes.MuusikaAkadeemia.bachelor,
                master: themes.MuusikaAkadeemia.masters,
                doctor: themes.MuusikaAkadeemia.doctor,
                applied: themes.MuusikaAkadeemia.rakendus,
                kutse: themes.MuusikaAkadeemia.kutse
            )
        case .ttk:
            return LevelColors(
                bachelor: themes.TTK.bachelor,
                master: themes.TTK.masters,
                doctor: themes.TTK.doctor,
                applied: themes.TTK.rakendus,
                kutse: themes.TTK.kutse
            )
    }
    }
    
    func phoneCall() {
        let formattedString = OEAppearance.Locale.network.telHttps + contact.phonenumber
        let url: NSURL = URL(string: formattedString)! as NSURL
        UIApplication.shared.open(url as URL)
    }
    
    func goHomePage() {
        guard let url = URL(string: website) else { return }
        UIApplication.shared.open(url)
    }
    
    func foreignStudentsCount() -> Int {
        if students != 0 {
            return internationalStudents * 100 / students
        } else {
            return 0
        }
    }

    func toSocialMedia(socialMedia: SocialMedia) {
        switch socialMedia.website {
        case .facebook:
            let appURL = NSURL(string: OEAppearance.Locale.network.fbHttps + socialMedia.link)!
            UIApplication.shared.open(appURL as URL)
        default:
            guard let url = URL(string: socialMedia.link as String) else { return }
            UIApplication.shared.open(url)
        }
    }
    
    func toMaps() {
        guard let url = URL(string: location.mapLink.rawValue) else { return }
        UIApplication.shared.open(url)
    }
    
    func schoolLocation() -> MKCoordinateRegion {
        return MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: location.latitude,longitude: location.longitude),
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        )
    }
    
    func getRegion() -> MKCoordinateRegion {
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        print(span)
        let coordinates = location.getCoordinates()
        print(coordinates)
        let region = MKCoordinateRegion(center: coordinates, span: span)
       return region
    }
}

struct SchoolOverview: Hashable, Identifiable {
    var id = UUID()
    var name: SchoolName
    var databaseId: Int
    var logo: String
    var city: String
    var latitude: Double
    var longitude: Double
    var color: Color
}

struct MapOverview: Hashable, Identifiable {
    var id = UUID()
    var name: SchoolName
    var logo: String
    var latitude: Double
    var longitude: Double
    var color: Color
    var isPrimary: Bool
    var city: city
    
    func getCoordinates() -> CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

enum SchoolName: String, Codable, CaseIterable {
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

struct College: Codable, Identifiable {
    var id = UUID().uuidString
    
    let name: String
    let branches: [CollegeLocation]
    let contact: CollegeContact
    let description: String
    let imageRefs: [String]
    let internationalStudents: Int
    let links: [CollegeLink]
    let location: CollegeLocation
    let logoRef: String
    let palette: CollegePalette
    let admission: [String]
    let students: Int
    let website: String
    let worldRanking: Int
}

struct CollegeLocation: Codable, Identifiable, Equatable {
    var id = UUID().uuidString
    let address: String
    let appleMapsLink: String
    let city: String
    let latitude: Double
    let longitude: Double
}

struct CollegeContact: Codable, Equatable {
    let address: String
    let phoneNumber: String
    let email: String
}

struct CollegeLink: Codable, Identifiable, Equatable {
    var id = UUID().uuidString
    let imageRef: String
    let link: String
    let name: String
}

struct CollegePalette: Codable, Equatable {
    let base: String
    let bachelors: String
    let masters: String
    let doctors: String
    let applied: String
}
