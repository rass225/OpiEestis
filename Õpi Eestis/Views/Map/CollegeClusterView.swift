import MapKit
import SwiftUI

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
            clusterSizeLabel.font = .boldSystemFont(ofSize: 16)

            // Add the label to a blue circular background
            let backgroundView = UIView()
            backgroundView.backgroundColor = UIColor(Theme.Colors.primary)
            backgroundView.layer.cornerRadius = 16
            backgroundView.layer.masksToBounds = true
            backgroundView.frame = CGRect(x: 0, y: 0, width: 32, height: 32)
            clusterSizeLabel.frame = backgroundView.frame
            backgroundView.addSubview(clusterSizeLabel)

            // Set the background view as the content of the annotation view
            self.addSubview(backgroundView)
            self.frame = backgroundView.frame
            self.displayPriority = .defaultLow
            self.collisionMode = .none
//            self.centerOffset = CGPoint(x: 0, y: -backgroundView.frame.height / 2)
        }
    }
}
