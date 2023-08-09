import SwiftUI
import MapKit

struct SchoolMapView: View {
    
    @State var region = MKCoordinateRegion()
    let school: School
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Button(action: {
                school.toMaps()
            }) {
                HStack{
                    VStack(alignment: .leading, spacing: 0){
                        Header(type: .location, school: school)
                        SubHeader(type: .location(address: school.location.aadress, city: school.location.city))
                    }
                    Spacer()
                    Chevron(type: .link)
                }
            }
            
            Map(coordinateRegion: $region, annotationItems: [school.location]) { item in
                MapAnnotation(
                    coordinate: item.getCoordinates(),
                    anchorPoint: CGPoint(x: 0.5, y: 1)
                ) {
                    MarkerView(color: school.color, logo: school.logo.rawValue)
                }
            }
            .disabled(true)
            .frame(maxWidth: .infinity)
            .frame(height: 350)
            .cornerRadius(12)
            .padding(.bottom, 10)
            Divider().padding(.top)
        }
        .padding(.horizontal, 24)
        
       
        .onAppear{
            schoolLocation()
        }
    }
    
    func schoolLocation() {
        let region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: school.location.latitude,
                longitude: school.location.longitude
            ),
            span: MKCoordinateSpan(
                latitudeDelta: 0.05,
                longitudeDelta: 0.05
            )
        )
        self.region = region
    }
}

private struct drawOverlay: View {
    let city: city
    var body : some View {
        HStack(spacing: 2){
            Spacer()
            Image.locationFill
                .font(.regularCallout)
            Text(city.rawValue).font(.semiBoldBody)
        }
        .padding(.top, 10)
        .padding(.trailing, 10)
        .foregroundColor(Color.black)
    }
}
