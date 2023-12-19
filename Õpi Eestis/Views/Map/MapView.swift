import SwiftUI
import MapKit

struct MapView: View {
    @EnvironmentObject var appState: AppState
    let locations: [CollegeBranch]
    
    var body: some View {
        switch appState.authState {
        case .authenticated:
            authenticatedView()
        case .unauthenticated:
            UnauthenticatedView(
                title: Theme.Locale.Map.unauthenticated,
                action: { appState.signInApple() }
            )
            .padding(.top)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    AppPrincipal()
                }
            }
        }
    }
}

extension MapView {
    @ViewBuilder
    func authenticatedView() -> some View {
        ClusteredMapView(locations: locations)
            .clipShape(.rect(
                topLeadingRadius: 16,
                topTrailingRadius: 16,
                style: .continuous
            ))
            .padding(.top, 20)
            .padding(.top)
            .background(.white)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    AppPrincipal()
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

struct CollegeBranch: Identifiable {
    var id = UUID()
    let location: CollegeLocation
    let parentCollege: College
}
