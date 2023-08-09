import SwiftUI
import MapKit

struct MapView: View {
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 58.8753, longitude: 25.2), span:  MKCoordinateSpan(latitudeDelta: 6.5, longitudeDelta: 6.5))
    @State var pickedSchool = ebs
    let schools: [College]
    let locations: [CollegeBranch]
    @State var toAboutActive = false
    @State var toSchoolActive = false
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations) { item in
                MapAnnotation(
                    coordinate: item.location.coordinates,
                    anchorPoint: CGPoint(x: 0.5, y: 1)
                ) {
                    NavigationLink(value: item.parentCollege) {
                        if item.location.isPrimary {
                            MarkerView(color: item.parentCollege.palette.base, logo: item.parentCollege.logoRef)
                        } else {
                            littleMarker(color: item.parentCollege.palette.base, logo: item.parentCollege.logoRef)
                        }
                    }
                }
        }
        .frame(maxWidth: .infinity)
        .frame(maxHeight: .infinity)
        .ignoreEdges(edge: .top)
        .navigationBarHidden(true)
        .navigationDestination(for: College.self) {
            CollegeView(model: .init(college: $0))
        }
        
    }
    
    struct CollegeBranch: Identifiable {
        var id = UUID()
        let location: CollegeLocation
        let parentCollege: College
    }

    func schoolLocation() {
        let center = CLLocationCoordinate2D(latitude: 58.8753, longitude: 25.2)
        let span = MKCoordinateSpan(latitudeDelta: 6.5, longitudeDelta: 6.5)
        let region = MKCoordinateRegion(center: center, span: span)
        self.region = region
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
