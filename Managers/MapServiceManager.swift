import MapKit
import SwiftUI

struct MapServiceManager {
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
    
    func mapSnapshot(
        with branches: [CollegeLocation],
        coordinateRegion: MKCoordinateRegion,
        baseColor: Color,
        secondaryColor: Color
    ) async -> UIImage? {
        let region = coordinateRegion
        let options = MKMapSnapshotter.Options()
        options.region = region
        options.size = CGSize(width: 400, height: 450)
        options.showsBuildings = true
        options.mapType = .standard
        options.scale = await UIScreen.main.scale

        let snapshotter = MKMapSnapshotter(options: options)

        do {
            let snapshot = try await snapshotter.snapshot()

            return await drawAnnotations(
                on: snapshot,
                for: branches,
                baseColor: baseColor,
                secondaryColor: secondaryColor
            )
        } catch {
            print("Error taking snapshot: \(error)")
            return nil
        }
    }
    
    func getRegion(
        locations: [CLLocationCoordinate2D],
        latitudeMultiplier: CGFloat = 1.25
    ) -> MKCoordinateRegion {
        let padding: Double = 0.3
        var minLatitude: Double = 90.0
        var maxLatitude: Double = -90.0
        var minLongitude: Double = 180.0
        var maxLongitude: Double = -180.0
        
        for location in locations {
            let latitude = location.latitude
            let longitude = location.longitude
            minLatitude = min(minLatitude, latitude)
            maxLatitude = max(maxLatitude, latitude)
            minLongitude = min(minLongitude, longitude)
            maxLongitude = max(maxLongitude, longitude)
        }
        
        let center = CLLocationCoordinate2D(
            latitude: (minLatitude + maxLatitude) / 2,
            longitude: (minLongitude + maxLongitude) / 2
        )
        
        if locations.count == 1 {
            let span = MKCoordinateSpan(
                latitudeDelta: 0.05,
                longitudeDelta: 0.05
            )
            return MKCoordinateRegion(center: center, span: span)
        } else {
            let latitudeDelta = (maxLatitude - minLatitude) * (latitudeMultiplier + padding)
            let longitudeDelta = (maxLongitude - minLongitude) * (1.0 + padding)
            
            let span = MKCoordinateSpan(
                latitudeDelta: latitudeDelta,
                longitudeDelta: longitudeDelta
            )
            return MKCoordinateRegion(center: center, span: span)
        }
    }
}

private extension MapServiceManager {
    func drawAnnotations(
        on snapshot: MKMapSnapshotter.Snapshot,
        for branches: [CollegeLocation],
        baseColor: Color,
        secondaryColor: Color
    ) async -> UIImage? {
        return await MainActor.run {
            UIGraphicsBeginImageContextWithOptions(snapshot.image.size, true, snapshot.image.scale)
            snapshot.image.draw(at: CGPoint.zero)

            let pinSize = CGSize(width: 90, height: 90)
            
            for branch in branches {
                let point = snapshot.point(for: branch.coordinates)
                let pinView = MarkerView(baseColor: baseColor, secondaryColor: secondaryColor)
                let pinImage = pinView.asImage(size: pinSize)

                let adjustedPoint = CGPoint(
                    x: point.x - pinSize.width / 2,
                    y: point.y - pinSize.height
                )
                pinImage.draw(at: adjustedPoint)
            }

            let snapshotImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()

            return snapshotImage
        }
    }
    
    struct MarkerView: View {
        var baseColor: Color
        var secondaryColor: Color
        
        var body: some View {
            Image("pin")
                .resizable()
                .fit()
                .setColor(baseColor.gradient)
                .overlay(alignment: .top) {
                    circle
                }
        }
        
        var circle: some View {
            Circle()
                .fill(secondaryColor)
                .frame(width: 8, height: 8)
                .padding(.top, 6)
        }
    }
}

struct MapLocation: Hashable {
    let address: String
    let appleMapLink: String
    let snapshot: UIImage
}



