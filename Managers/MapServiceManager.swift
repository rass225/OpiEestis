import MapKit

class MapServiceManager {
    func loadSnapshots(for location: CLLocationCoordinate2D) async -> (UIImage?, UIImage?) {
        let options = MKMapSnapshotter.Options()
        options.region = MKCoordinateRegion(
            center: location,
            latitudinalMeters: 3000,
            longitudinalMeters: 3000
        )
        options.size = CGSize(width: 400, height: 400)

        var standardImage: UIImage?
        var hybridFlyoverImage: UIImage?

        for mapType in [MKMapType.standard, MKMapType.hybridFlyover] {
            options.mapType = mapType
            
            do {
                let snapshotter = MKMapSnapshotter(options: options)
                let snapshot = try await snapshotter.snapshot()
                let image = snapshot.image
                defer { UIGraphicsEndImageContext() }
                
                UIGraphicsBeginImageContextWithOptions(image.size, true, image.scale)
                image.draw(at: CGPoint.zero)
                
                if mapType == .standard {
                    standardImage = UIGraphicsGetImageFromCurrentImageContext()
                } else if mapType == .hybridFlyover {
                    hybridFlyoverImage = UIGraphicsGetImageFromCurrentImageContext()
                }
                
            } catch {
                print("Snapshot error: \(error)")
            }
        }

        return (standardImage, hybridFlyoverImage)
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
