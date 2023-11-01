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
                    switch $0 {
                    case let .college(college):
                        CollegeView(model: .init(college: college))
                    case let .majors(college, majors):
                        MajorsView(model: .init(college: college, majors: majors, user: appState.user, appState: appState))
                    case let .major(college, major, isFavorite):
                        CollegeMajorView(model: .init(major: major, college: college, isFavorite: isFavorite))
                    case let .majorRemote(college, major, isFavorite):
                        CollegeMajorViewRemote(model: .init(major: major, college: college, user: appState.user, isFavorite: isFavorite, appState: appState))
                    case let .collegeMap(college):
                        CollegeMapView(model: .init(college: college, region: .init()))
                    case let .collegeDevelopment(college):
                        CollegeDevelopment(model: .init(college: college))
                    case .about:
                        AboutView()
                    case .settings:
                        SettingsView()
                    case let .myAccount(user):
                        MyAccountView(model: .init(user: user))
                    }
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
                    switch $0 {
                    case let .college(college):
                        CollegeView(model: .init(college: college))
                    case let .majors(college, majors):
                        MajorsView(model: .init(college: college, majors: majors, user: appState.user, appState: appState))
                    case let .major(college, major, isFavorite):
                        CollegeMajorView(model: .init(major: major, college: college, isFavorite: isFavorite))
                    case let .majorRemote(college, major, isFavorite):
                        CollegeMajorViewRemote(model: .init(major: major, college: college, user: appState.user, isFavorite: isFavorite, appState: appState))
                    case let .collegeMap(college):
                        CollegeMapView(model: .init(college: college, region: .init()))
                    case let .collegeDevelopment(college):
                        CollegeDevelopment(model: .init(college: college))
                    case .about:
                        AboutView()
                    case .settings:
                        SettingsView()
                    case let .myAccount(user):
                        MyAccountView(model: .init(user: user))
                    }
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
                    switch $0 {
                    case let .college(college):
                        CollegeView(model: .init(college: college))
                    case let .majors(college, majors):
                        MajorsView(model: .init(college: college, majors: majors, user: appState.user, appState: appState))
                    case let .major(college, major, isFavorite):
                        CollegeMajorView(model: .init(major: major, college: college, isFavorite: isFavorite))
                    case let .majorRemote(college, major, isFavorite):
                        CollegeMajorViewRemote(model: .init(major: major, college: college, user: appState.user, isFavorite: isFavorite, appState: appState))
                    case let .collegeMap(college):
                        CollegeMapView(model: .init(college: college, region: .init()))
                    case let .collegeDevelopment(college):
                        CollegeDevelopment(model: .init(college: college))
                    case .about:
                        AboutView()
                    case .settings:
                        SettingsView()
                    case let .myAccount(user):
                        MyAccountView(model: .init(user: user))
                    }
                }
        }
        .tabItem(mapTabItem)
        .tag(Tabs.map)
    }
    
    @ViewBuilder
    func collegesView() -> some View {
        NavigationStack(path: $appState.collegeNavigation) {
            CollegesListView(schools: model.schools)
                .navigationDestination(for: CollegeDestination.self) {
                    switch $0 {
                    case let .college(college):
                        CollegeView(model: .init(college: college))
                    case let .majors(college, majors):
                        MajorsView(model: .init(college: college, majors: majors, user: appState.user, appState: appState))
                    case let .major(college, major, isFavorite):
                        CollegeMajorView(model: .init(major: major, college: college, isFavorite: isFavorite))
                    case let .majorRemote(college, major, isFavorite):
                        CollegeMajorViewRemote(model: .init(major: major, college: college, user: appState.user, isFavorite: isFavorite, appState: appState))
                    case let .collegeMap(college):
                        CollegeMapView(model: .init(college: college, region: .init()))
                    case let .collegeDevelopment(college):
                        CollegeDevelopment(model: .init(college: college))
                    case .about:
                        AboutView()
                    case .settings:
                        SettingsView()
                    case let .myAccount(user):
                        MyAccountView(model: .init(user: user))
                    }
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
        Label("Koolid", systemImage: "graduationcap.fill")
    }
    
    @ViewBuilder
    func mapTabItem() -> some View {
        Label("Kaart", systemImage: "map.fill")
    }
    
    @ViewBuilder
    func favoritesTabItem() -> some View {
        Label("Lemmikud", systemImage: "heart.fill")
    }
    
    @ViewBuilder
    func profileTabItem() -> some View {
        Label("Profiil", systemImage: "person.fill")
    }
}
