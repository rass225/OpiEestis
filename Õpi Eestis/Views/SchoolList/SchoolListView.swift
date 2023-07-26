import SwiftUI
import MapKit

struct SchoolListView: View {
    let schools = Universities()
   
    @State var pickedSchool = School(name: .ebs, description: ["s"], location: Location(city: .undefined, aadress: "", latitude: 0, longitude: 0, mapLink: .undefined, branches: []), website: "", students: 0, contact: ContactInfo(phonenumber: "", address: "", email: ""), socialMedia: [], logo: .undefined, image: .undefined, imageUrls: [""], internationalStudents: 0, worldRanking: 0, vastuvõtt: [])
    @State var toAboutActive = false
    @State var toSchoolActive = false
    
    var body: some View {
        NavigationStack {
            List(schools.universities.indices, id: \.self) { index in
                Button(action: {
                    pickedSchool(name: schools.universities[index].name) {
                        toSchoolActive.toggle()
                    }
                }) {
                    SchoolCell(school: schools.universities[index])
                }
                .listRowInsets(.init(top: 8, leading: 0, bottom: 8, trailing: 16))
            }
            .scrollContentBackground(.hidden)
            .background(Color.whiteDim1)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            .navigationDestination(
                isPresented: $toSchoolActive,
                destination: { SchoolView(school: pickedSchool) }
            )
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
    
    private struct Info: View {
        var body : some View {
            Image.info
                .frame(height: 30)
                .frame(width: 30)
                .font(.regularCaption)
                .background(Color.oeBlue)
                .cornerRadius(50)
                .foregroundColor(.white)
        }
    }
    func pickedSchool(name: SchoolName, completion: @escaping () -> Void ) {
        let result: School
        
        switch name {
        case .ebs: result = ebs
        case .kaitsevägi:result = Kaitseakadeemia
        case .kunstiakadeemia: result = kunstiakadeemia
        case .lennuakadeemia: result = lennuakadeemia
        case .maaülikool: result = maaülikool
        case .mainor: result = mainor
        case .pallas: result = kõrgemkunstikoolPallas
        case .sisekaitseakadeemia: result = sisekaitseakadeemia
        case .tallinnaTervishoiuKõrgkool: result = ebs //
        case .tallinnaÜlikool: result = tallinnaÜlikool
        case .taltech: result = ttü
        case .tartuTervishoiuKõrgkool: result = tartuTervishoiuKõrgkool
        case .tartuÜlikool: result = tartuÜlikool
        case .teatriakadeemia: result = MuusikaAkadeemia
        case .ttk: result = TTK
        }
        pickedSchool = result
        completion()
    }
}

