import SwiftUI
import MessageUI

struct SchoolView: View {
    @Environment(\.presentationMode) var presentationMode
    let school: School
    @State var majorsCount = 0
    @State var education: [majorsMinors] = []
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack(spacing: 0){
                Text(school.name.rawValue.capitalized)
                    .font(.body)
                    .fontWeight(.medium)
                    .padding(.vertical, 8)
                SchoolImage(school: school)
                SchoolStatistics(
                    school: school,
                    education: $education
                )
                SchoolMajor(
                    school: school,
                    education: $education,
                    majorsCount: $majorsCount
                )
                SchoolSummaryView(school: school)
                SchoolMapView(school: school)
                SchoolWebsiteView(school: school)
                SchoolContact(school: school)
                SchoolAdmissionView(school: school)
                SocialMediaView(school: school)
            }.padding(.bottom,60)
        }
        .background(Color.white)
        .onAppear{ getEducation(schoolName: school.name) }
        .toolbar{
            AppToolbarItem(.dismiss, color: school.color)
            AppToolbarItem(.logo(school: school), color: school.color)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
    }
    
    func getEducation(schoolName: SchoolName) {
        let result: [majorsMinors]
        switch schoolName {
        case .ebs: result = loadJson("EBS")!
        case .kaitsevägi:result = loadJson("Kaitsevägi")!
        case .kunstiakadeemia: result = loadJson("Kunstiakadeemia")!
        case .lennuakadeemia: result = loadJson("Lennuakadeemia")!
        case .maaülikool:  result = loadJson("EMU")!
        case .mainor:  result = loadJson("Mainor")!
        case .pallas: result = loadJson("Pallas")!
        case .sisekaitseakadeemia: result = loadJson("Sisekaitseakadeemia")!
        case .tallinnaTervishoiuKõrgkool: result = loadJson("TartuTervishoid")!
        case .tallinnaÜlikool:  result = loadJson("TLÜ")!
        case .taltech: result = loadJson("TTÜ")!
        case .tartuTervishoiuKõrgkool: result = loadJson("TartuTervishoid")!
        case .tartuÜlikool: result = loadJson("TÜ")!
        case .teatriakadeemia: result = loadJson("Muusikaakadeemia")!
        case .ttk: result = loadJson("TTK")!
        }
        education = result
        majorsCount = result.count
    }
    
    func loadJson(_ filename: String) -> [majorsMinors]? {
        if let url = Bundle.main.url(forResource: filename, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([majorsMinors].self, from: data)
                return jsonData
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
    
    func printJSON(data: [majorsMinors]) {
        let jsonData = try! JSONEncoder().encode(data)
        let jsonString = String(data: jsonData, encoding: .utf8)!
        print(jsonString)
    }
}
