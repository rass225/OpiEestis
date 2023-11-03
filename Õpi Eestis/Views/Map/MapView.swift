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
                title: "Kaardi vaatamiseks logi sisse",
                action: appState.signInApple
            )
        }
        
    }
}

extension MapView {
    @ViewBuilder
    func authenticatedView() -> some View {
        ClusteredMapView(locations: locations)
            .ignoresSafeArea(edges: .top)
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
