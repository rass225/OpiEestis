import SwiftUI
import MapKit

struct CollegeLocation: Codable, Equatable, Hashable, Identifiable {
    var id = UUID()
    
    let address: String
    let appleMapLink: String
    let city: String
    let latitude: Double
    let longitude: Double
    let isPrimary: Bool
    
    enum CodingKeys: String, CodingKey {
        case address
        case appleMapLink
        case city
        case latitude
        case longitude
        case isPrimary
    }
    
    var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: latitude,
                longitude: longitude
            ),
            span: MKCoordinateSpan(
                latitudeDelta: 0.01,
                longitudeDelta: 0.01
            )
        )
    }
    
    var coordinates: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    var longAddress: String {
        "\(address), \(city)"
    }
}
