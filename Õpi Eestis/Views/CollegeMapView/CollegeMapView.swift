import SwiftUI
import MapKit

struct CollegeMapView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var model: Model
    var body: some View {
        Map(
            coordinateRegion: .constant(model.region),
            annotationItems: model.college.branches
        ) { location in
            MapAnnotation(coordinate: location.coordinates, content: {
                if location.isPrimary {
                    marker()
                } else {
                    marker(
                        pinWidth: 24,
                        pinHeight: 32,
                        circleDiameter: 6,
                        circleTopPadding: 9,
                        yOffset: -12
                    )
                }
            })
        }
        .ignoreEdges(edge: .bottom)
        .overlay(alignment: .topTrailing, content: closeButton)
    }
}

extension CollegeMapView {
    @ViewBuilder
    func closeButton() -> some View {
        Image(systemName: "xmark")
            .setFont(.title3, .semibold, .rounded)
            .setColor(model.college.palette.base)
            .padding(8)
            .background(Color.white)
            .clipShape(.rect(cornerRadius: 8, style: .continuous))
            .padding()
            .onTapGesture(perform: dismiss.callAsFunction)
    }
    
    @ViewBuilder
    func marker(
        pinWidth: CGFloat = 32,
        pinHeight: CGFloat = 40,
        circleDiameter: CGFloat = 8,
        circleTopPadding: CGFloat = 10.5,
        yOffset: CGFloat = -16
    ) -> some View {
        Image("pin")
            .resizable()
            .fit()
            .frame(width: pinWidth, height: pinHeight)
            .setColor(model.college.palette.base.gradient)
            .overlay(alignment: .top) {
                Circle()
                    .fill(model.college.palette.secondary)
                    .frame(width: circleDiameter, height: circleDiameter)
                    .padding(.top, circleTopPadding)
            }
            .offset(x: 0, y: yOffset)
    }
}

extension CollegeMapView {
    class Model: ObservableObject {
        let college: College
        let region: MKCoordinateRegion
        
        init(
            college: College,
            region: MKCoordinateRegion
        ) {
            self.college = college
            self.region = region
        }
    }
}
