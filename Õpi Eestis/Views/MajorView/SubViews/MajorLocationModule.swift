import SwiftUI
import MapKit

struct MajorLocationModule: View {
    @State var region = MKCoordinateRegion()
    let school: School
    let major: majorsMinors
    var body: some View {
        VStack(spacing: 0){
            Button(action: {
               openMaps()
            }) {
                HStack(alignment: .center, spacing: 0){
                    VStack(spacing: 0){
                        Header(type: .location, school: school)
                        SubHeader(type: .location(address: majorAddress(), city: major.studyLocation[0]))
                    }
                    Spacer()
                    Chevron(type: .link)
                }
            }
            Map(coordinateRegion: $region, annotationItems: school.location.branches) { item in
                MapAnnotation(coordinate: item.getCoordinates(), anchorPoint: CGPoint(x: 0.5, y: 1)) {
                    MarkerView(color: school.color, logo: school.logo.rawValue)
                }
            }
            .disabled(true)
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .cornerRadius(12)
            .padding(.bottom)
           
        }.padding(.horizontal, 25)
            .onAppear{
                if let location = school.location.branches.first(where: { $0.city == major.studyLocation[0] }) {
                    region = location.getRegion()
                } else {
                    region = school.getRegion()
                }
            }
    }
    
    func majorAddress() -> String {
        let city = major.studyLocation[0]
        let address: String
        if let location = school.location.branches.first(where: { $0.city == city }) {
            address = location.address
        } else {
            address = school.location.aadress
        }
        
        return "\(address)"
    }
    
    func openMaps() {
        if let location = school.location.branches.first(where: { $0.city == major.studyLocation[0] }) {
            guard let url = URL(string: location.mapLink.rawValue) else { return }
            UIApplication.shared.open(url)
        }
    }
}
