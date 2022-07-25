import Foundation

enum schoolImage: String, CaseIterable, Codable {
    case mainor = "Minorimage"
    case kunstiAkadeemia = "EKAimage"
    case lennuAkadeemia = "EL"
    case emu = "EMÜimage"
    case muusikaAkadeemia = "muusikaakadeemiaimage"
    case ebs = "EBSimage"
    case kaitseväeAkadeemia = "KAimage"
    case pallas = "KKPimage"
    case sisekaitseAkadeemia = "sisekaitseimage"
    case tehnikaKõrgkool = "TaTeKõpicture"
    case taltech = "ttü"
    case tallinnaÜlikool = "TallinnaÜimage"
    case tartuTervishoid = "TTKimage"
    case tallinnaTervishoid = "TaTKimage"
    case tartuÜlikool = "UniversityTartuImage"
    case undefined = ""
}

