import Foundation
import SwiftUI

class Theme: ObservableObject {
    @Published var colorTheme: Color = .oeBlue
    @Published var levelColors: LevelColors = LevelColors(
        bachelor: .white,
        master: .white,
        doctor: .white,
        applied: .white,
        kutse: .white
    )
    @Published var school: School = emptySchool
    @Published var schoolTheme: Color = .oeBlue
     
    func setSelectedSchool(_ school: School) {
        self.school = school
        self.schoolTheme = getColor(school: school.name)
        print("New school: \(self.school.name)")
        print("New color: \(schoolTheme.description)")
    }
    
    func deselectSchool() {
        self.school = emptySchool
        self.schoolTheme = .oeBlue
    }
    
    private func getColor(school: SchoolName) -> Color {
        switch school {
        case .ebs: return Color.SchoolThemes.EBS.base
        case .kaitsevägi: return Color.SchoolThemes.Kaitsevägi.base
        case .kunstiakadeemia: return Color.SchoolThemes.EKA.base
        case .lennuakadeemia: return Color.SchoolThemes.Lennuakadeemia.base
        case .maaülikool: return Color.SchoolThemes.EMÜ.base
        case .mainor: return Color.SchoolThemes.Mainor.base
        case .pallas: return Color.SchoolThemes.Pallas.base
        case .sisekaitseakadeemia: return Color.SchoolThemes.Sisekaitse.base
        case .tallinnaTervishoiuKõrgkool: return .oeBlue
        case .tallinnaÜlikool: return Color.SchoolThemes.TLÜ.base
        case .taltech: return Color.SchoolThemes.TalTech.base
        case .tartuTervishoiuKõrgkool: return Color.SchoolThemes.TartuTervishoid.base
        case .tartuÜlikool: return Color.SchoolThemes.TÜ.base
        case .teatriakadeemia: return Color.SchoolThemes.MuusikaAkadeemia.base
        case .ttk: return Color.SchoolThemes.TTK.base
        }
    }
    
    func setTheme(name: SchoolName) {
        switch name {
        case .ebs: colorTheme = Color.SchoolThemes.EBS.base
        case .kaitsevägi: colorTheme = Color.SchoolThemes.Kaitsevägi.base
        case .kunstiakadeemia: colorTheme = Color.SchoolThemes.EKA.base
        case .lennuakadeemia: colorTheme = Color.SchoolThemes.Lennuakadeemia.base
        case .maaülikool: colorTheme = Color.SchoolThemes.EMÜ.base
        case .mainor: colorTheme = Color.SchoolThemes.Mainor.base
        case .pallas: colorTheme = Color.SchoolThemes.Pallas.base
        case .sisekaitseakadeemia: colorTheme = Color.SchoolThemes.Sisekaitse.base
        case .tallinnaTervishoiuKõrgkool: colorTheme = .oeBlue
        case .tallinnaÜlikool:colorTheme = Color.SchoolThemes.TLÜ.base
        case .taltech: colorTheme = Color.SchoolThemes.TalTech.base
        case .tartuTervishoiuKõrgkool: colorTheme = Color.SchoolThemes.TartuTervishoid.base
        case .tartuÜlikool: colorTheme = Color.SchoolThemes.TÜ.base
        case .teatriakadeemia: colorTheme = Color.SchoolThemes.MuusikaAkadeemia.base
        case .ttk: colorTheme = Color.SchoolThemes.TTK.base
        }
    }
    
    func setLevels(name: SchoolName) {
        let themes = Color.SchoolThemes.self
      
        switch name {
        case .ebs:
            levelColors = LevelColors(
                bachelor: themes.EBS.bachelor,
                master: themes.EBS.masters,
                doctor: themes.EBS.doctor,
                applied: themes.EBS.rakendus,
                kutse: themes.EBS.kutse
            )
        case .kaitsevägi:
            levelColors = LevelColors(
                bachelor: themes.Kaitsevägi.bachelor,
                master: themes.Kaitsevägi.masters,
                doctor: themes.Kaitsevägi.doctor,
                applied: themes.Kaitsevägi.rakendus,
                kutse: themes.Kaitsevägi.kutse
            )
        case .kunstiakadeemia:
            levelColors = LevelColors(
                bachelor: themes.EKA.bachelor,
                master: themes.EKA.masters,
                doctor: themes.EKA.doctor,
                applied: themes.EKA.rakendus,
                kutse: themes.EKA.kutse
            )
        case .lennuakadeemia:
            levelColors = LevelColors(
                bachelor: themes.Lennuakadeemia.bachelor,
                master: themes.Lennuakadeemia.masters,
                doctor: themes.Lennuakadeemia.doctor,
                applied: themes.Lennuakadeemia.rakendus,
                kutse: themes.Lennuakadeemia.kutse
            )
        case .maaülikool:
            levelColors = LevelColors(
                bachelor: themes.EMÜ.bachelor,
                master: themes.EMÜ.masters,
                doctor: themes.EMÜ.doctor,
                applied: themes.EMÜ.rakendus,
                kutse: themes.EMÜ.kutse
            )
        case .mainor:
            levelColors = LevelColors(
                bachelor: themes.Mainor.bachelor,
                master: themes.Mainor.masters,
                doctor: themes.Mainor.doctor,
                applied: themes.Mainor.rakendus,
                kutse: themes.Mainor.kutse
            )
        case .pallas:
            levelColors = LevelColors(
                bachelor: themes.Pallas.bachelor,
                master: themes.Pallas.masters,
                doctor: themes.Pallas.doctor,
                applied: themes.Pallas.rakendus,
                kutse: themes.Pallas.kutse
            )
        case .sisekaitseakadeemia:
            levelColors = LevelColors(
                bachelor: themes.Sisekaitse.bachelor,
                master: themes.Sisekaitse.masters,
                doctor: themes.Sisekaitse.doctor,
                applied: themes.Sisekaitse.rakendus,
                kutse: themes.Sisekaitse.kutse
            )
        case .tallinnaTervishoiuKõrgkool:
            colorTheme = .oeBlue
        case .tallinnaÜlikool:
            levelColors = LevelColors(
                bachelor: themes.TLÜ.bachelor,
                master: themes.TLÜ.masters,
                doctor: themes.TLÜ.doctor,
                applied: themes.TLÜ.rakendus,
                kutse: themes.TLÜ.kutse
            )
        case .taltech:
            levelColors = LevelColors(
                bachelor: themes.TalTech.bachelor,
                master: themes.TalTech.masters,
                doctor: themes.TalTech.doctor,
                applied: themes.TalTech.rakendus,
                kutse: themes.TalTech.kutse
            )
        case .tartuTervishoiuKõrgkool:
            levelColors = LevelColors(
                bachelor: themes.TartuTervishoid.bachelor,
                master: themes.TartuTervishoid.masters,
                doctor: themes.TartuTervishoid.doctor,
                applied: themes.TartuTervishoid.rakendus,
                kutse: themes.TartuTervishoid.kutse
            )
        case .tartuÜlikool:
            levelColors = LevelColors(
                bachelor: themes.TÜ.bachelor,
                master: themes.TÜ.masters,
                doctor: themes.TÜ.doctor,
                applied: themes.TÜ.rakendus,
                kutse: themes.TÜ.kutse
            )
        case .teatriakadeemia:
            levelColors = LevelColors(
                bachelor: themes.MuusikaAkadeemia.bachelor,
                master: themes.MuusikaAkadeemia.masters,
                doctor: themes.MuusikaAkadeemia.doctor,
                applied: themes.MuusikaAkadeemia.rakendus,
                kutse: themes.MuusikaAkadeemia.kutse
            )
        case .ttk:
            levelColors = LevelColors(
                bachelor: themes.TTK.bachelor,
                master: themes.TTK.masters,
                doctor: themes.TTK.doctor,
                applied: themes.TTK.rakendus,
                kutse: themes.TTK.kutse
            )
        }
    }
}

struct LevelColors {
    var bachelor: Color
    var master: Color
    var doctor: Color
    var applied: Color
    var kutse: Color
}



