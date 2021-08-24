import SwiftUI

struct SchoolView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var theme: Theme
    
    let school: School
    
    @State var isAboutTapped = false
    @State var descriptionIsShown = false
    @State var majorsCount = 0
    @State var education: [majorsMinors] = []
    
    var body: some View {
        ZStack {
            Color.whiteDim1
            VStack(spacing: 0){
                SchoolImage(school: school)
                SchoolDescriptionView(school: school, education: $education)
                SchoolMajor(school: school, education: $education, majorsCount: $majorsCount)
                SocialMediaView(socialMedia: school.socialMedia)
                Spacer()
            }
        }
        .ignoreEdges(edge: .vertical)
        .onAppear{
            getMajorsCount(schoolName: school.name)
            getEducation(schoolName: school.name)
        }
    }
    
    func dismiss() { self.presentationMode.wrappedValue.dismiss() }
    
    func toAbout() { descriptionIsShown.toggle() }
    
    func getMajorsCount(schoolName: SchoolName) {
        let result: Int
        switch schoolName {
        case .ebs:
            result = ebsEducation.count
        case .kaitsevägi:
            result = kaitseväeAkadeemiaEducation.count
        case .kunstiakadeemia:
            result = kunstiAkadeemiaEducation.count
        case .lennuakadeemia:
            result = lennuakadeemiaEducation.count
        case .maaülikool:
            result = maaülikoolEducation.count
        case .mainor:
            result = mainorEducation.count
        case .pallas:
            result = pallasEducation.count
        case .sisekaitseakadeemia:
            result = sisekaitseakadeemiaEducation.count
        case .tallinnaTervishoiuKõrgkool:
            result = 0
        case .tallinnaÜlikool:
            result = tallinnaÜlikoolEducation.count
        case .taltech:
            result = ttüEducation.count
        case .tartuTervishoiuKõrgkool:
            result = tartuTervishoiuKõrgkoolEducation.count
        case .tartuÜlikool:
            result = tartuÜlikoolEducation.count
        case .teatriakadeemia:
            result = muusikaAkadeemiaEducation.count
        case .ttk:
            result = TTKEducation.count
        }
        
       majorsCount = result
    }
    
    func getEducation(schoolName: SchoolName) {
        let result: [majorsMinors]
        switch schoolName {
        case .ebs:
            result = ebsEducation
        case .kaitsevägi:
            result = kaitseväeAkadeemiaEducation
        case .kunstiakadeemia:
            result = kunstiAkadeemiaEducation
        case .lennuakadeemia:
            result = lennuakadeemiaEducation
        case .maaülikool:
            result = maaülikoolEducation
        case .mainor:
            result = mainorEducation
        case .pallas:
            result = pallasEducation
        case .sisekaitseakadeemia:
            result = sisekaitseakadeemiaEducation
        case .tallinnaTervishoiuKõrgkool:
            result = tartuTervishoiuKõrgkoolEducation
        case .tallinnaÜlikool:
            result = tallinnaÜlikoolEducation
        case .taltech:
            result = ttüEducation
        case .tartuTervishoiuKõrgkool:
            result = tartuTervishoiuKõrgkoolEducation
        case .tartuÜlikool:
            result = tartuÜlikoolEducation
        case .teatriakadeemia:
            result = muusikaAkadeemiaEducation
        case .ttk:
            result = TTKEducation
        }
        education = result
    }
}
