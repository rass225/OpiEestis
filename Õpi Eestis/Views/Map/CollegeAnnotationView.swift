import SwiftUI
import MapKit

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
                ).frame(height: 48, alignment: .top)
                customView = UIHostingController(rootView: markerView).view
                customView.frame.size = .init(width: 40, height: 48)
                customView.backgroundColor = UIColor.clear
            } else {
                let littleMarkerView = LittleMarkerView(
                    color: collegeAnnotation.branch.parentCollege.palette.base,
                    logo: collegeAnnotation.branch.parentCollege.logoRef
                ).frame(height: 36, alignment: .top)
                customView = UIHostingController(rootView: littleMarkerView).view
                customView.frame.size = .init(width: 30, height: 36)
                customView.backgroundColor = UIColor.clear
            }
            
            self.addSubview(customView)
            self.frame = customView.frame
            self.displayPriority = .required
            if collegeAnnotation.branch.location.isPrimary {
                self.centerOffset = CGPoint(x: 0, y: -35)
            } else {
                self.centerOffset = CGPoint(x: 0, y: -25)
            }
            
            self.collisionMode = .rectangle
        }
    }
}
