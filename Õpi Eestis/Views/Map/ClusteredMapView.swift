import SwiftUI
import MapKit

struct ClusteredMapView: UIViewRepresentable {
    @EnvironmentObject var appState: AppState
    var locations: [CollegeBranch]
    let region: MKCoordinateRegion = MKCoordinateRegion(
        center: .init(
            latitude: 58.8753,
            longitude: 25.2
        ),
        span:  .init(
            latitudeDelta: 6.5,
            longitudeDelta: 6.5
        )
    )

    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        mapView.setRegion(region, animated: false)
        mapView.register(CollegeAnnotationView.self, forAnnotationViewWithReuseIdentifier: "college")
        mapView.register(CollegeClusterView.self, forAnnotationViewWithReuseIdentifier: "cluster")
        return mapView
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        uiView.removeAnnotations(uiView.annotations)
        uiView.addAnnotations(locations.map { CollegeAnnotation(branch: $0) })
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: ClusteredMapView
        var initialRegionSet: Bool = false

        init(_ parent: ClusteredMapView) {
            self.parent = parent
        }

        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            if let cluster = annotation as? MKClusterAnnotation {
                return mapView.dequeueReusableAnnotationView(withIdentifier: "cluster", for: cluster)
            } else if let collegeAnnotation = annotation as? CollegeAnnotation {
                return mapView.dequeueReusableAnnotationView(withIdentifier: "college", for: collegeAnnotation)
            }
            return nil
        }
        
        func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
            if let clusterAnnotation = view.annotation as? MKClusterAnnotation {
                // Get the current zoom level
                let currentSpan = mapView.region.span
                let tolerance: Double = 0.5
                
                if currentSpan.latitudeDelta > parent.region.span.latitudeDelta + tolerance ||
                    currentSpan.longitudeDelta > parent.region.span.longitudeDelta + tolerance {
                    print(parent.region.span)
                    print(currentSpan)
                    let newRegion = MKCoordinateRegion(
                        center: clusterAnnotation.coordinate,
                        span: parent.region.span
                    )
                    mapView.setRegion(newRegion, animated: true)
                } else {
                    // Determine the new zoom level with a linear zoom factor
                    let maxZoomFactor: Double = 0.3 // Maximum zoom factor when zoomed out
                    let minZoomFactor: Double = 0.05 // Minimum zoom factor when zoomed in
                    let currentZoomFactor = maxZoomFactor - (maxZoomFactor - minZoomFactor) * (currentSpan.latitudeDelta / parent.region.span.latitudeDelta)
                    
                    // Compute new span values, ensuring they stay within valid limits
                    let newLatDelta = max(0.01, min(currentSpan.latitudeDelta * currentZoomFactor, 180))
                    let newLonDelta = max(0.01, min(currentSpan.longitudeDelta * currentZoomFactor, 180))
                    let newSpan = MKCoordinateSpan(latitudeDelta: newLatDelta,
                                                    longitudeDelta: newLonDelta)
                    let newRegion = MKCoordinateRegion(center: clusterAnnotation.coordinate, span: newSpan)

                    // Set the new region with an animation
                    mapView.setRegion(newRegion, animated: true)
                }
                // Deselect the annotation so that it can be re-selected and zoomed in again
                mapView.deselectAnnotation(clusterAnnotation, animated: false)
            } else if let collegeAnnotation = view.annotation as? CollegeAnnotation {
                switch parent.appState.environment {
                case .edit:
                    parent.appState.route(to: .collegeDevelopment(collegeAnnotation.branch.parentCollege))
                case .local:
                    parent.appState.route(to: .college(collegeAnnotation.branch.parentCollege))
                case .remote:
                    parent.appState.route(to: .college(collegeAnnotation.branch.parentCollege))
                }
            }
        }
    }
}
