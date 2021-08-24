import SwiftUI

struct SchoolListView: View {
    @EnvironmentObject var theme: Theme
    let schools = Universities()
   
    @State var pickedSchool = School(name: .ebs, description: [], location: Location(city: .undefined, aadress: "", coordinates: .undefined), website: "", students: 0, contact: ContactInfo(phonenumber: "", address: "", email: ""), socialMedia: [], logo: .undefined, image: .undefined, internationalStudents: 0, worldRanking: 0, vastuvõtt: [])
    @State var selection: Int?
    
    var body: some View {
        NavigationView{
            ZStack{
                NavigationLink(
                    destination: SchoolView(school: pickedSchool).environmentObject(theme),
                    tag: 1,
                    selection: $selection,
                    label: { EmptyView() })
                WhiteBackground()
                ScrollView {
                    VStack(spacing: 0){
                        ForEach(schools.universities.indices, id: \.self) { index in
                            Button(action: {
                                pickedSchool(name: schools.universities[index].name) {
                                    selection = 1
                                }
                            }) {
                                SchoolCell(school: schools.universities[index], index: index)
                            }.environmentObject(theme)
                        }
                    }
                }
            }
            .navigationBarTitle(Text(Locale.app), displayMode: .automatic)
            .navigationBarItems(leading: Logo(), trailing: NavigationLink(destination: AboutView()) { Info() } )
        }
    }
}

extension SchoolListView {
    
    private struct Logo: View {
        var body : some View {
            Image.appLogo2
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundColor(Color.oeBlue)
        }
    }
    
    private struct  Info: View {
        var body : some View {
            Image.info
                .frame(height: 30)
                .frame(width: 30)
                .font(.regularTitle3)
                .background(Color.oeBlue)
                .cornerRadius(50)
                .foregroundColor(.white)
        }
    }
    func pickedSchool(name: SchoolName, completion: @escaping () -> Void ) {
        let themes = Color.SchoolThemes.self
        let result: School
        switch name {
        case .ebs:
            result = ebs
            theme.colorTheme = themes.EBS.base
            theme.levelColors = LevelColors(
                bachelor: themes.EBS.bachelor,
                master: themes.EBS.masters,
                doctor: themes.EBS.doctor,
                applied: themes.EBS.rakendus,
                kutse: themes.EBS.kutse
            )
        case .kaitsevägi:
            result = Kaitseakadeemia
            theme.colorTheme = themes.Kaitsevägi.base
            theme.levelColors = LevelColors(
                bachelor: themes.Kaitsevägi.bachelor,
                master: themes.Kaitsevägi.masters,
                doctor: themes.Kaitsevägi.doctor,
                applied: themes.Kaitsevägi.rakendus,
                kutse: themes.Kaitsevägi.kutse
            )
        case .kunstiakadeemia:
            result = kunstiakadeemia
            theme.colorTheme = themes.EKA.base
            theme.levelColors = LevelColors(
                bachelor: themes.EKA.bachelor,
                master: themes.EKA.masters,
                doctor: themes.EKA.doctor,
                applied: themes.EKA.rakendus,
                kutse: themes.EKA.kutse
            )
        case .lennuakadeemia:
            result = lennuakadeemia
            theme.colorTheme = themes.Lennuakadeemia.base
            theme.levelColors = LevelColors(
                bachelor: themes.Lennuakadeemia.bachelor,
                master: themes.Lennuakadeemia.masters,
                doctor: themes.Lennuakadeemia.doctor,
                applied: themes.Lennuakadeemia.rakendus,
                kutse: themes.Lennuakadeemia.kutse
            )
        case .maaülikool:
            result = maaülikool
            theme.colorTheme = themes.EMÜ.base
            theme.levelColors = LevelColors(
                bachelor: themes.EMÜ.bachelor,
                master: themes.EMÜ.masters,
                doctor: themes.EMÜ.doctor,
                applied: themes.EMÜ.rakendus,
                kutse: themes.EMÜ.kutse
            )
        case .mainor:
            result = mainor
            theme.colorTheme = themes.Mainor.base
            theme.levelColors = LevelColors(
                bachelor: themes.Mainor.bachelor,
                master: themes.Mainor.masters,
                doctor: themes.Mainor.doctor,
                applied: themes.Mainor.rakendus,
                kutse: themes.Mainor.kutse
            )
        case .pallas:
            result = kõrgemkunstikoolPallas
            theme.colorTheme = themes.Pallas.base
            theme.levelColors = LevelColors(
                bachelor: themes.Pallas.bachelor,
                master: themes.Pallas.masters,
                doctor: themes.Pallas.doctor,
                applied: themes.Pallas.rakendus,
                kutse: themes.Pallas.kutse
            )
        case .sisekaitseakadeemia:
            result = sisekaitseakadeemia
            theme.colorTheme = themes.Sisekaitse.base
            theme.levelColors = LevelColors(
                bachelor: themes.Sisekaitse.bachelor,
                master: themes.Sisekaitse.masters,
                doctor: themes.Sisekaitse.doctor,
                applied: themes.Sisekaitse.rakendus,
                kutse: themes.Sisekaitse.kutse
            )
        case .tallinnaTervishoiuKõrgkool:
            result = tallinnaTervishoiuKõrgkool
            theme.colorTheme = .oeBlue
        case .tallinnaÜlikool:
            result = tallinnaÜlikool
            theme.colorTheme = themes.TLÜ.base
            theme.levelColors = LevelColors(
                bachelor: themes.TLÜ.bachelor,
                master: themes.TLÜ.masters,
                doctor: themes.TLÜ.doctor,
                applied: themes.TLÜ.rakendus,
                kutse: themes.TLÜ.kutse
            )
        case .taltech:
            result = ttü
            theme.colorTheme = themes.TalTech.base
            theme.levelColors = LevelColors(
                bachelor: themes.TalTech.bachelor,
                master: themes.TalTech.masters,
                doctor: themes.TalTech.doctor,
                applied: themes.TalTech.rakendus,
                kutse: themes.TalTech.kutse
            )
        case .tartuTervishoiuKõrgkool:
            result = tartuTervishoiuKõrgkool
            theme.colorTheme = themes.TartuTervishoid.base
            theme.levelColors = LevelColors(
                bachelor: themes.TartuTervishoid.bachelor,
                master: themes.TartuTervishoid.masters,
                doctor: themes.TartuTervishoid.doctor,
                applied: themes.TartuTervishoid.rakendus,
                kutse: themes.TartuTervishoid.kutse
            )
        case .tartuÜlikool:
            result = tartuÜlikool
            theme.colorTheme = themes.TÜ.base
            theme.levelColors = LevelColors(
                bachelor: themes.TÜ.bachelor,
                master: themes.TÜ.masters,
                doctor: themes.TÜ.doctor,
                applied: themes.TÜ.rakendus,
                kutse: themes.TÜ.kutse
            )
        case .teatriakadeemia:
            result = MuusikaAkadeemia
            theme.colorTheme = themes.MuusikaAkadeemia.base
            theme.levelColors = LevelColors(
                bachelor: themes.MuusikaAkadeemia.bachelor,
                master: themes.MuusikaAkadeemia.masters,
                doctor: themes.MuusikaAkadeemia.doctor,
                applied: themes.MuusikaAkadeemia.rakendus,
                kutse: themes.MuusikaAkadeemia.kutse
            )
        case .ttk:
            result = TTK
            theme.colorTheme = themes.TTK.base
            theme.levelColors = LevelColors(
                bachelor: themes.TTK.bachelor,
                master: themes.TTK.masters,
                doctor: themes.TTK.doctor,
                applied: themes.TTK.rakendus,
                kutse: themes.TTK.kutse
            )
        }
        pickedSchool = result
        completion()
    }
}


