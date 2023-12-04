import SwiftUI
import CoreLocation
import MapKit

struct ContentView: View {
    @EnvironmentObject var model: Model
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        if model.schools.isEmpty {
            ProgressView()
                .progressViewStyle(.circular)
        } else {
            TabView(selection: appState.tabSelection) {
                collegesView()
                mapView()
                favoritesView()
                profileView()
            }
            .tint(Theme.Colors.primary.gradient)
        }
    }
}

// MARK: - Tabs
extension ContentView {
    @ViewBuilder
    func profileView() -> some View {
        NavigationStack(path: $appState.profileNavigation) {
            ProfileView()
                .navigationDestination(for: CollegeDestination.self) {
                    appState.navigationDestination($0)
                }
        }
        .tabItem(profileTabItem)
        .tag(Tabs.profile)
    }
    
    @ViewBuilder
    func favoritesView() -> some View {
        NavigationStack(path: $appState.favoritesNavigation) {
            FavoritesViewWrapper(colleges: model.schools)
                .navigationDestination(for: CollegeDestination.self) {
                    appState.navigationDestination($0)
                }
        }
        .tabItem(favoritesTabItem)
        .tag(Tabs.favorites)
    }
    
    @ViewBuilder
    func mapView() -> some View {
        NavigationStack(path: $appState.mapNavigation) {
            MapView(locations: model.getAllBranches())
                .navigationDestination(for: CollegeDestination.self) {
                    appState.navigationDestination($0)
                }
        }
        .tabItem(mapTabItem)
        .tag(Tabs.map)
    }
    
    @ViewBuilder
    func collegesView() -> some View {
        NavigationStack(path: $appState.collegeNavigation) {
            CollegesListView(model: .init(colleges: model.schools))
                .navigationDestination(for: CollegeDestination.self) {
                    appState.navigationDestination($0)
                }
        }
        .tabItem(collegesTabItem)
        .tag(Tabs.colleges)
    }
}

// MARK: - Tab items
extension ContentView {
    @ViewBuilder
    func collegesTabItem() -> some View {
        Label(Theme.Locale.Tabs.schools, systemImage: "graduationcap.fill")
//        Label(Theme.Locale.Tabs.schools, systemImage: "graduationcap.fill")
    }
    
    @ViewBuilder
    func mapTabItem() -> some View {
        Label(Theme.Locale.Tabs.map, systemImage: "map.fill")
    }
    
    @ViewBuilder
    func favoritesTabItem() -> some View {
        Label(Theme.Locale.Tabs.favorites, systemImage: "heart.fill")
    }
    
    @ViewBuilder
    func profileTabItem() -> some View {
        Label(Theme.Locale.Tabs.profile, systemImage: "person.fill")
    }
}
