import SwiftUI
import MessageUI

struct SchoolView: View {
    @Environment(\.presentationMode) var presentationMode
    let school: School
    @State var majorsCount = 0
    @State var education: [majorsMinors] = []
    var body: some View {
        VStack{
            ScrollView{
                VStack(spacing: 0){
                    SchoolImage(school: school)
                    SchoolStatistics(school: school, education: $education)
                    SchoolSummaryView(school: school)
                    SchoolMajor(school: school, education: $education, majorsCount: $majorsCount)
                    SchoolMapView(school: school)
                    SchoolWebsiteView(school: school)
                    SchoolContact(school: school)
                    SchoolAdmissionView(school: school)
                    SocialMediaView(school: school)
                }.padding(.bottom,60)
            }
            .background(Color.white)
            .padding(.top, 10)
        }
        .background(Color.white)
        .ignoreEdges(edge: .bottom)
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
//        printJSON(data: result)
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
