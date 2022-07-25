import MapKit
import CoreLocation

struct Location: Hashable, Codable, Identifiable{
    var id = UUID()
    var city: city//Under Info
    var aadress: String//Under Info
    var latitude: Double
    var longitude: Double
    var mapLink: MapLink
    var branches: [Branch]
    
    func getCoordinates() -> CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    func getRegion() -> MKCoordinateRegion {
       return MKCoordinateRegion(
            center: getCoordinates(),
            span: MKCoordinateSpan(
                latitudeDelta: 0.05,
                longitudeDelta: 0.05
            )
       )
    }
}


