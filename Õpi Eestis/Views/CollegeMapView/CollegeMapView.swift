import SwiftUI
import MapKit

struct CollegeMapView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var model: Model
    @State private var localRegion: MKCoordinateRegion
    
    init(model: Model) {
        _model = StateObject(wrappedValue: model)
        _localRegion = State(initialValue: model.region)
    }
    
    var body: some View {
        Map(
            coordinateRegion: $localRegion,
            annotationItems: model.college.branches
        ) { location in
            MapAnnotation(coordinate: location.coordinates, content: {
                if location.isPrimary {
                    marker()
                        .onTapGesture {
                            model.selectedBranch = location
                        }
                } else {
                    marker(
                        pinWidth: 24,
                        pinHeight: 32,
                        circleDiameter: 7,
                        circleTopPadding: 4.5,
                        yOffset: -8
                    )
                    .padding()
                    .contentShape(Rectangle())
                    .onTapGesture {
                        model.selectedBranch = location
                    }
                }
            })
        }
        .ignoreEdges(edge: .bottom)
        .overlay(alignment: .topTrailing, content: closeButton)
        .presentationCornerRadius(16)
        .sheet(item: $model.selectedBranch) { branch in
            detailView(branch: branch)
        }
//        .onAppear {
//            localRegion = model.region
//        }
    }
}

extension CollegeMapView {
    @ViewBuilder
    func detailView(branch: CollegeLocation) -> some View {
        VStack(spacing: 0) {
            HStack(alignment: .top, spacing: 0) {
                HStack(alignment: .top) {
                    marker(pinWidth: 33.6, pinHeight: 42, circleDiameter: 9, circleTopPadding: 6.5, yOffset: 0)
                    VStack(alignment: .leading) {
                        Text(branch.name)
                            .multilineTextAlignment(.leading)
                            .setFont(.body, .medium, .rounded)
                        
                        Text(branch.longAddress)
                            .setFont(.subheadline, .regular, .rounded)
                            .setColor(.gray)
                    }
                }
                .maxWidth(alignment: .leading)
                detailViewCloseButton()
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 24)
            HStack {
                Menu(content: { directionMenuContent(coordinates: branch.coordinates) }, label: directionsMenuLabel)
                Button(action: model.callCollege) {
                    Theme.Icons.phone
                        .modifier(DetailViewButtonModifier(color: model.college.palette.base))
                }
                Button(action: model.openEmail) {
                    Theme.Icons.envelope
                        .modifier(DetailViewButtonModifier(color: model.college.palette.base))
                }
                Button(action: model.openHomePage) {
                    Theme.Icons.house
                        .modifier(DetailViewButtonModifier(color: model.college.palette.base))
                }
                Spacer()
            }
            .padding(.horizontal, 16)
            Spacer(minLength: 0)
        }
        .padding(.top)
        .presentationBackground(Color.white)
        .presentationCornerRadius(16)
        .presentationDetents([.fraction(0.225)])
    }
    
    @ViewBuilder
    func closeButton() -> some View {
        Image(systemName: "xmark")
            .setFont(.title2, .semibold, .rounded)
            .setColor(model.college.palette.base.gradient)
            .padding(8)
            .background(.regularMaterial)
            .clipShape(.rect(cornerRadius: 8, style: .continuous))
            .padding()
            .padding([.leading, .bottom])
            .contentShape(Rectangle())
            .onTapGesture(perform: dismiss.callAsFunction)
    }
    
    @ViewBuilder
    func detailViewCloseButton() -> some View {
        Image(systemName: "xmark")
            .setFont(.title3, .semibold, .rounded)
            .setColor(model.college.palette.base.gradient)
            .padding(8)
            .background(Color.white)
            .clipShape(.rect(cornerRadius: 8, style: .continuous))
            .shadow(color: .gray.opacity(0.2), radius: 4, x: 0, y: 0)
            .onTapGesture(perform: {model.selectedBranch = nil})
    }
    
    @ViewBuilder
    func directionsMenuLabel() -> some View {
        HStack {
            Image(systemName: "car.fill")
                .setFont(.title2, .regular, .rounded)
                .setColor(model.college.palette.base.gradient)
            Text("Juhised")
                .setFont(.subheadline, .semibold, .rounded)
                .setColor(model.college.palette.base)
        }
        .frame(height: 32)
        .padding(8)
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 8, style: .continuous))
        .shadow(color: .gray.opacity(0.2), radius: 4, x: 0, y: 0)
    }
    
    @ViewBuilder
    func directionMenuContent(coordinates: CLLocationCoordinate2D) -> some View {
        Button("Waze", action: { model.openWaze(with: coordinates) })
        Button("Google Maps", action: { model.openGoogleMaps(with: coordinates) })
        Button("Apple Maps", action: { model.openAppleMaps(with: coordinates) })
    }
    
    @ViewBuilder
    func marker(
        pinWidth: CGFloat = 32,
        pinHeight: CGFloat = 40,
        circleDiameter: CGFloat = 9,
        circleTopPadding: CGFloat = 6,
        yOffset: CGFloat = -12
    ) -> some View {
        Image("pin")
            .resizable()
            .fit()
            .frame(width: pinWidth, height: pinHeight, alignment: .top)
            .setColor(model.college.palette.base.gradient)
            .overlay(alignment: .top) {
                Circle()
                    .fill(model.college.palette.secondary)
                    .frame(width: circleDiameter, height: circleDiameter)
                    .padding(.top, circleTopPadding)
            }
            .offset(x: 0, y: yOffset)
    }
    
    struct DetailViewButtonModifier: ViewModifier {
        let color: Color
        func body(content: Content) -> some View {
            content
                .setFont(.title2, .regular, .rounded)
                .setColor(color.gradient)
                .frame(width: 32, height: 32)
                .padding(8)
                .background(Color.white)
                .clipShape(.rect(cornerRadius: 8, style: .continuous))
                .shadow(color: .gray.opacity(0.2), radius: 4, x: 0, y: 0)
        }
    }
}
