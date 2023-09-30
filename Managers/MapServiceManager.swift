import MapKit
import SwiftUI

class MapServiceManager {
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
        let coordinates = branches.map(\.coordinates)
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
                let pinView = MarkerViewX(baseColor: baseColor, secondaryColor: secondaryColor)
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
}

struct MapLocation: Hashable {
    let address: String
    let appleMapLink: String
    let snapshot: UIImage
}


struct MarkerViewX: View {
    var baseColor: Color
    var secondaryColor: Color
    
    var body: some View {
        Image("pin")
            .resizable()
            .fit()
            .setColor(baseColor.gradient)  // Replaced setColor with colorMultiply for simplicity. Adjust as needed.
            .overlay(alignment: .top) {
                Circle()
                    .fill(secondaryColor)
                    .frame(width: 8, height: 8)
                    .padding(.top, 6)
            }
    }
}
