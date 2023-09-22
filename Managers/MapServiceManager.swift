import MapKit

class MapServiceManager {
    func loadSnapshots(for location: CLLocationCoordinate2D, mapType: MKMapType) async -> UIImage? {
        let options = MKMapSnapshotter.Options()
        options.region = MKCoordinateRegion(
            center: location,
            latitudinalMeters: 3000,
            longitudinalMeters: 3000
        )
        options.size = CGSize(width: 400, height: 400)
        
        var mapImage: UIImage?
        
        options.mapType = mapType
        
        do {
            let snapshotter = MKMapSnapshotter(options: options)
            let snapshot = try await snapshotter.snapshot()
            let image = snapshot.image
            
            UIGraphicsBeginImageContextWithOptions(image.size, true, image.scale)
            defer { UIGraphicsEndImageContext() }  // Move defer here
            
            image.draw(at: CGPoint.zero)
            
            mapImage = UIGraphicsGetImageFromCurrentImageContext()
           
            
        } catch {
            print("Snapshot error: \(error)")
        }
        
        return mapImage
    }
    
    func fetchMapSnapshot(for location: CollegeLocation) async -> MapLocation? {
        let options = MKMapSnapshotter.Options()
        options.region = MKCoordinateRegion(center: location.coordinates, latitudinalMeters: 3000, longitudinalMeters: 3000)
        options.size = CGSize(width: 400, height: 400)
        options.mapType = .standard
        
        do {
            let snapshotter = MKMapSnapshotter(options: options)
            let snapshot = try await snapshotter.snapshot()
            let image = snapshot.image
            
            UIGraphicsBeginImageContextWithOptions(image.size, true, image.scale)
            defer { UIGraphicsEndImageContext() }
            image.draw(at: CGPoint.zero)
            
            guard let finalImage = UIGraphicsGetImageFromCurrentImageContext() else { return nil }
            let mapLocation: MapLocation = .init(
                address: location.address,
                appleMapLink: location.appleMapLink,
                snapshot: finalImage
            )
            
            return mapLocation
        } catch {
            print("Snapshot error: \(error)")
            return nil
        }
    }
}

struct MapLocation: Hashable {
    let address: String
    let appleMapLink: String
    let snapshot: UIImage
}
