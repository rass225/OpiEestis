import Foundation
import CoreLocation
import MapKit

struct Branch: Hashable, Codable, Identifiable {
    var id = UUID()
    var city: city
    var address: String
    var latitude: Double
    var longitude: Double
    var mapLink: MapLink
    
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
