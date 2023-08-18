import SwiftUI
import MapKit

struct MapView: View {
    
    @EnvironmentObject var pathManager: PathManager
    let locations: [CollegeBranch]
    
    var body: some View {
        ClusteredMapView(locations: locations)
            .ignoresSafeArea(edges: .top)
            .navigationDestination(for: College.self) {
                CollegeView(model: .init(college: $0))
            }
    }
}

struct ClusteredMapView: UIViewRepresentable {
    @EnvironmentObject var pathManager: PathManager
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
                parent.pathManager.path.append(collegeAnnotation.branch.parentCollege)
            }
        }

    }
}

class CollegeAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var branch: CollegeBranch

    init(branch: CollegeBranch) {
        self.coordinate = branch.location.coordinates
        self.branch = branch
    }
}

class CollegeAnnotationView: MKAnnotationView {
    override var annotation: MKAnnotation? {
        willSet {
            for subview in self.subviews {
                subview.removeFromSuperview()
            }

            guard let collegeAnnotation = newValue as? CollegeAnnotation else { return }
            clusteringIdentifier = "college"
            
            let customView: UIView

            if collegeAnnotation.branch.location.isPrimary {
                let markerView = MarkerView(
                    color: collegeAnnotation.branch.parentCollege.palette.base,
                    logo: collegeAnnotation.branch.parentCollege.logoRef
                ).frame(height: 60, alignment: .top)
                customView = UIHostingController(rootView: markerView).view
            } else {
                let littleMarkerView = LittleMarkerView(
                    color: collegeAnnotation.branch.parentCollege.palette.base,
                    logo: collegeAnnotation.branch.parentCollege.logoRef
                ).frame(height: 36, alignment: .top)
                customView = UIHostingController(rootView: littleMarkerView).view
            }
            
            self.addSubview(customView)
            self.frame = customView.frame
            self.displayPriority = .required
            if collegeAnnotation.branch.location.isPrimary {
                self.centerOffset = CGPoint(x: 0, y: -45)
            } else {
                self.centerOffset = CGPoint(x: 0, y: -27)
            }
        }
    }
}



class CollegeClusterView: MKAnnotationView {
    override var annotation: MKAnnotation? {
        willSet {
            // Remove existing subviews
            for subview in self.subviews {
                subview.removeFromSuperview()
            }

            guard let clusterAnnotation = newValue as? MKClusterAnnotation else { return }
            let clusterSize = clusterAnnotation.memberAnnotations.count

            // Create a label for the cluster size
            let clusterSizeLabel = UILabel()
            clusterSizeLabel.text = "\(clusterSize)"
            clusterSizeLabel.textAlignment = .center
            clusterSizeLabel.textColor = .white
            clusterSizeLabel.font = .boldSystemFont(ofSize: 14)

            // Add the label to a blue circular background
            let backgroundView = UIView()
            backgroundView.backgroundColor = UIColor(Color.oeBlue)
            backgroundView.layer.cornerRadius = 22
            backgroundView.layer.masksToBounds = true
            backgroundView.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
            clusterSizeLabel.frame = backgroundView.frame
            backgroundView.addSubview(clusterSizeLabel)

            // Set the background view as the content of the annotation view
            self.addSubview(backgroundView)
            self.frame = backgroundView.frame
            self.displayPriority = .required
            
//            self.centerOffset = CGPoint(x: 0, y: -backgroundView.frame.height / 2)
        }
    }
}


struct CollegeBranch: Identifiable {
    var id = UUID()
    let location: CollegeLocation
    let parentCollege: College
}
