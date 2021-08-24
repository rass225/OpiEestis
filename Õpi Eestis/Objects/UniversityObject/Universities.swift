import SwiftUI

class Universities: ObservableObject {
    let schools = [
        kunstiakadeemia,
        maaülikool,
        MuusikaAkadeemia,
        kõrgemkunstikoolPallas,
        tallinnaÜlikool,
        TTK,
        mainor,
        lennuakadeemia,
        ttü,
        sisekaitseakadeemia,
        ebs,
        tartuTervishoiuKõrgkool,
        tartuÜlikool,
        Kaitseakadeemia
//            tallinnaTervishoiuKõrgkool ////Korras - Leping?
    ].sorted(by: { $0.name.rawValue < $1.name.rawValue })

    let universities: [SchoolOverview] = [
        SchoolOverview(name: .kunstiakadeemia, databaseId: 0, logo: "EKA2", city: "Tallinn"),
        SchoolOverview(name: .maaülikool, databaseId: 1, logo: "EMÜ", city: "Tartu"),
        SchoolOverview(name: .teatriakadeemia, databaseId: 2, logo: "EMTA", city: "Tallinn"),
        SchoolOverview(name: .pallas, databaseId: 3, logo: "KKPlogo", city: "Tartu"),
        SchoolOverview(name: .tallinnaÜlikool, databaseId: 4, logo: "TallinnaÜlogo", city: "Tallinn"),
        SchoolOverview(name: .ttk, databaseId: 5, logo: "TTK", city: "Tallinn"),
        SchoolOverview(name: .mainor, databaseId: 6, logo: "Minorlogo2", city: "Tallinn"),
        SchoolOverview(name: .lennuakadeemia, databaseId: 7, logo: "ELlogo5", city: "Reola"),
        SchoolOverview(name: .taltech, databaseId: 8, logo: "TalTech", city: "Tallinn"),
        SchoolOverview(name: .sisekaitseakadeemia, databaseId: 9, logo: "Sisekaitselogo", city: "Tallinn"),
        SchoolOverview(name: .ebs, databaseId: 10, logo: "EBSlogo", city: "Tallinn"),
        SchoolOverview(name: .tartuTervishoiuKõrgkool, databaseId: 11, logo: "TTKlogo2", city: "Tartu"),
        SchoolOverview(name: .tartuÜlikool, databaseId: 12, logo: "Tartu Ülikool", city: "Tartu"),
        SchoolOverview(name: .kaitsevägi, databaseId: 13, logo: "KAlogo", city: "Tartu")
    ].sorted(by: { $0.name.rawValue < $1.name.rawValue })
}

