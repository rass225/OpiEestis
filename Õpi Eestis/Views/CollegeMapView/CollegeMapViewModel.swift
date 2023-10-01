import SwiftUI
import MapKit

extension CollegeMapView {
    class Model: ObservableObject {
        let college: College
        @Published var selectedBranch: CollegeLocation?
        @Published var region: MKCoordinateRegion
        
        private let dependencies: DependencyManager
        
        init(
            college: College,
            region: MKCoordinateRegion
        ) {
            self.college = college
            self.region = region
            self.dependencies = .shared
        }
        
        func openHomePage() {
            dependencies.network.openLink(with: college.website)
        }
        
        func callCollege() {
            dependencies.network.callNumber(with: college.contact.phoneNumber)
        }
        
        func openEmail() {
            dependencies.network.openMail(with: college.contact.email)
        }
        
        func openAppleMaps(with destination: CLLocationCoordinate2D) {
            let placemark = MKPlacemark(coordinate: destination)
            let mapItem = MKMapItem(placemark: placemark)
            mapItem.name = "Destination"
            mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving])
        }
        
        func openGoogleMaps(with destination: CLLocationCoordinate2D) {
            let baseUrl = "https://www.google.com/maps/dir/?api=1"
            let latitude = destination.latitude
            let longitude = destination.longitude
            let destinationString = "&destination=\(latitude),\(longitude)"
            let origin = "&origin=current+location"
            let travelMode = "&travelmode=driving"
            let urlString = baseUrl + destinationString + origin + travelMode
            
            if let url = URL(string: urlString) {
                UIApplication.shared.open(url)
            }
        }
        
        func openWaze(with destination: CLLocationCoordinate2D) {
            let latitude = destination.latitude
            let longitude = destination.longitude
            let deepLinkString = "waze://?ll=\(latitude),\(longitude)&navigate=yes"
            
            if let wazeURL = URL(string: deepLinkString), UIApplication.shared.canOpenURL(wazeURL) {
                UIApplication.shared.open(wazeURL)
            } else {
                let httpsString = "https://waze.com/ul?ll=\(latitude),\(longitude)&navigate=yes"
                if let webURL = URL(string: httpsString) {
                    UIApplication.shared.open(webURL)
                }
            }
        }
    }
}

