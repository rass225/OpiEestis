import SwiftUI

class Universities: ObservableObject {
    let universities: [SchoolOverview] = [
        SchoolOverview(name: .kunstiakadeemia, databaseId: 0, logo: "EKA2", city: "Tallinn", latitude: 59.442550, longitude: 24.741083, color: Color.SchoolThemes.EKA.base),
        SchoolOverview(name: .maaülikool, databaseId: 1, logo: "EMÜ", city: "Tartu", latitude: 58.388584, longitude: 26.694059, color: Color.SchoolThemes.EMÜ.base),
        SchoolOverview(name: .teatriakadeemia, databaseId: 2, logo: "EMTA", city: "Tallinn", latitude: 59.431273, longitude: 24.748163, color: Color.SchoolThemes.MuusikaAkadeemia.base),
        SchoolOverview(name: .pallas, databaseId: 3, logo: "KKPlogo", city: "Tartu", latitude: 58.36940476832641, longitude: 26.729636391404263, color: Color.SchoolThemes.Pallas.base),
        SchoolOverview(name: .tallinnaÜlikool, databaseId: 4, logo: "TallinnaÜlogo", city: "Tallinn", latitude: 59.439302,longitude: 24.772181, color: Color.SchoolThemes.TLÜ.base),
        SchoolOverview(name: .ttk, databaseId: 5, logo: "TTK", city: "Tallinn", latitude: 59.426357, longitude: 24.741383, color: Color.SchoolThemes.TTK.base),
        SchoolOverview(name: .mainor, databaseId: 6, logo: "Minorlogo2", city: "Tallinn", latitude: 59.422706, longitude: 24.800080, color: Color.SchoolThemes.Mainor.base),
        SchoolOverview(name: .lennuakadeemia, databaseId: 7, logo: "ELlogo5", city: "Reola", latitude: 58.310726, longitude: 26.693408, color: Color.SchoolThemes.Lennuakadeemia.base),
        SchoolOverview(name: .taltech, databaseId: 8, logo: "TalTech", city: "Tallinn", latitude: 59.394400, longitude: 24.667949, color: Color.SchoolThemes.TalTech.base),
        SchoolOverview(name: .sisekaitseakadeemia, databaseId: 9, logo: "Sisekaitselogo", city: "Tallinn", latitude: 59.455648, longitude: 24.842846, color: Color.SchoolThemes.Sisekaitse.base),
        SchoolOverview(name: .ebs, databaseId: 10, logo: "EBSlogo", city: "Tallinn", latitude: 59.432066, longitude: 24.756594, color: Color.SchoolThemes.EBS.base),
        SchoolOverview(name: .tartuTervishoiuKõrgkool, databaseId: 11, logo: "TTKlogo2", city: "Tartu", latitude: 58.365378, longitude: 26.691359, color: Color.SchoolThemes.TartuTervishoid.base),
        SchoolOverview(name: .tartuÜlikool, databaseId: 12, logo: "Tartu Ülikool", city: "Tartu", latitude: 58.381114, longitude: 26.719898, color: Color.SchoolThemes.TÜ.base),
        SchoolOverview(name: .kaitsevägi, databaseId: 13, logo: "KAlogo", city: "Tartu", latitude: 58.373470, longitude: 26.722206, color: Color.SchoolThemes.Kaitsevägi
                    .base)
    ].sorted(by: { $0.name.rawValue < $1.name.rawValue })
    
    let map: [MapOverview] = [
        MapOverview(name: .kunstiakadeemia, logo: "EKA2", latitude: 59.442550, longitude: 24.741083, color: Color.SchoolThemes.EKA.base, isPrimary: true, city: .tallinn),
        MapOverview(name: .maaülikool, logo: "EMÜ", latitude: 58.388584, longitude: 26.694059, color: Color.SchoolThemes.EMÜ.base, isPrimary: true, city: .tartu),
        MapOverview(name: .teatriakadeemia, logo: "EMTA", latitude: 59.431273, longitude: 24.748163, color: Color.SchoolThemes.MuusikaAkadeemia.base, isPrimary: true, city: .tallinn),
        MapOverview(name: .pallas, logo: "KKPlogo", latitude: 58.36940476832641, longitude: 26.729636391404263, color: Color.SchoolThemes.Pallas.base, isPrimary: true, city: .tartu),
        MapOverview(name: .tallinnaÜlikool, logo: "TallinnaÜlogo", latitude: 59.439302, longitude: 24.772181, color: Color.SchoolThemes.TLÜ.base, isPrimary: true, city: .tallinn),
        MapOverview(name: .tallinnaÜlikool, logo: "TallinnaÜlogo", latitude: 58.9354417, longitude: 23.539483, color: Color.SchoolThemes.TLÜ.base, isPrimary: false, city: .haapsalu),
        MapOverview(name: .ttk, logo: "TTK", latitude: 59.426357, longitude: 24.741383, color: Color.SchoolThemes.TTK.base, isPrimary: true, city: .tallinn),
        MapOverview(name: .ttk, logo: "TTK", latitude: 59.3047118, longitude: 26.4523262, color: Color.SchoolThemes.TTK.base, isPrimary: false, city: .mõdriku),
        MapOverview(name: .mainor, logo: "Minorlogo2", latitude: 59.422706, longitude: 24.800080, color: Color.SchoolThemes.Mainor.base, isPrimary: true, city: .tallinn),
        MapOverview(name: .mainor, logo: "Minorlogo2", latitude: 58.37678117189599, longitude: 26.71685857429206, color: Color.SchoolThemes.Mainor.base, isPrimary: false, city: .tartu),
        MapOverview(name: .lennuakadeemia, logo: "ELlogo5", latitude: 58.310726, longitude: 26.693408, color: Color.SchoolThemes.Lennuakadeemia.base, isPrimary: true, city: .reola),
        MapOverview(name: .taltech, logo: "TalTech", latitude: 59.394400, longitude: 24.667949, color: Color.SchoolThemes.TalTech.base, isPrimary: true, city: .tallinn),
        MapOverview(name: .taltech, logo: "TalTech", latitude: 59.4015419, longitude: 27.2888136, color: Color.SchoolThemes.TalTech.base, isPrimary: false, city: .kohtlaJärve),
        MapOverview(name: .taltech, logo: "TalTech", latitude: 58.3892817, longitude: 26.7279829, color: Color.SchoolThemes.TalTech.base, isPrimary: false, city: .tartu),
        MapOverview(name: .taltech, logo: "TalTech", latitude: 58.2543252, longitude: 22.4866063, color: Color.SchoolThemes.TalTech.base, isPrimary: false, city: .kuressaare),
        MapOverview(name: .sisekaitseakadeemia, logo: "Sisekaitselogo", latitude: 59.455648, longitude: 24.842846, color: Color.SchoolThemes.Sisekaitse.base, isPrimary: true, city: .tallinn),
        MapOverview(name: .ebs, logo: "EBSlogo", latitude: 59.432066, longitude: 24.756594, color: Color.SchoolThemes.EBS.base, isPrimary: true, city: .tallinn),
        MapOverview(name: .ebs, logo: "EBSlogo", latitude: 60.1694493, longitude: 24.9191788, color: Color.SchoolThemes.EBS.base, isPrimary: false, city: .helsingi),
        MapOverview(name: .tartuTervishoiuKõrgkool, logo: "TTKlogo2", latitude: 58.365378, longitude: 26.691359, color: Color.SchoolThemes.TartuTervishoid.base, isPrimary: true, city: .tartu),
        MapOverview(name: .tartuTervishoiuKõrgkool, logo: "TTKlogo2", latitude: 58.3828635, longitude: 25.5746752, color: Color.SchoolThemes.TartuTervishoid.base, isPrimary: false, city: .viljandi),
        MapOverview(name: .tartuTervishoiuKõrgkool, logo: "TTKlogo2", latitude: 59.4048405, longitude: 24.6341299, color: Color.SchoolThemes.TartuTervishoid.base, isPrimary: false, city: .tallinn),
        MapOverview(name: .tartuÜlikool, logo: "Tartu Ülikool", latitude: 58.381114, longitude: 26.719898, color: Color.SchoolThemes.TÜ.base, isPrimary: true, city: .tartu),
        MapOverview(name: .tartuÜlikool, logo: "Tartu Ülikool", latitude: 59.3791019, longitude: 28.1971821, color: Color.SchoolThemes.TÜ.base, isPrimary: false, city: .narva),
        MapOverview(name: .tartuÜlikool, logo: "Tartu Ülikool", latitude: 58.3664078, longitude: 25.5953052, color: Color.SchoolThemes.TÜ.base, isPrimary: false, city: .viljandi),
        MapOverview(name: .tartuÜlikool, logo: "Tartu Ülikool", latitude: 59.4329636, longitude: 24.7433143, color: Color.SchoolThemes.TÜ.base, isPrimary: false, city: .tallinn),
        MapOverview(name: .tartuÜlikool, logo: "Tartu Ülikool", latitude: 58.38492, longitude: 24.4864965, color: Color.SchoolThemes.TÜ.base, isPrimary: false, city: .pärnu),
        MapOverview(name: .kaitsevägi, logo: "KAlogo", latitude: 58.373470, longitude: 26.722206, color: Color.SchoolThemes.Kaitsevägi
                        .base, isPrimary: true, city: .tartu),
        
    ].sorted(by: { $0.name.rawValue < $1.name.rawValue })
}

