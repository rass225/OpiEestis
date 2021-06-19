import Foundation
import SwiftUI
import Combine

class SchoolListPresenter: ObservableObject {
    @EnvironmentObject var theme: Theme
    let navBar = NavigationBarTitles()
    let schools = Universities()
   
    @Published var pickedSchool = School(name: .ebs, description: [], location: Location(city: "", aadress: "", coordinates: ""), website: "", students: 0, contact: ContactInfo(phonenumber: "", address: "", email: ""), socialMedia: [], logo: "", image: "", internationalStudents: 0, worldRanking: 0, vastuvõtt: [], education: [])
    @Published var searchText = ""
    @ObservedObject var networkManager = NetworkManager()
    
//    func searchBarfunc() -> [SchoolOverview] {
//        var filteredSchools: [SchoolOverview]
//        if searchText.isEmpty {
//            filteredSchools = schools.universities
//        } else {
//            filteredSchools = schools.universities.filter { $0.name.rawValue.lowercased().contains(searchText.lowercased())}
//        }
//        return filteredSchools.sorted(by: { $0.name.rawValue < $1.name.rawValue })
//    }
    
    func pickedSchool(name: SchoolName, completion: @escaping () -> Void ) {
        let result: School
        switch name {
        case .ebs:
            result = ebs
        case .kaitsevägi:
            result = Kaitseakadeemia
        case .kunstiakadeemia:
            result = kunstiakadeemia
        case .lennuakadeemia:
            result = lennuakadeemia
        case .maaülikool:
            result = maaülikool
        case .mainor:
            result = mainor
        case .pallas:
            result = kõrgemkunstikoolPallas
        case .sisekaitseakadeemia:
            result = sisekaitseakadeemia
        case .tallinnaTervishoiuKõrgkool:
            result = tallinnaTervishoiuKõrgkool
        case .tallinnaÜlikool:
            result = tallinnaÜlikool
            theme.colorTheme = Color.SchoolThemes.TLÜ.base
        case .taltech:
            result = ttü
            theme.colorTheme = Color.SchoolThemes.TLÜ.base
        case .tartuTervishoiuKõrgkool:
            result = tartuTervishoiuKõrgkool
        case .tartuÜlikool:
            result = tartuÜlikool
            
        case .teatriakadeemia:
            result = MuusikaAkadeemia
        case .ttk:
            result = TTK
        }
        pickedSchool = result
        completion()
    }
}

