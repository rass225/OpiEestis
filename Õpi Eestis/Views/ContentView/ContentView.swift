import SwiftUI
import CoreLocation
import MapKit
struct ContentView: View {
    @StateObject private var model = Model()
    @StateObject private var appState = AppState()
    
    var body: some View {
        TabView(selection: appState.tabSelection) {
            NavigationStack(path: $appState.collegeNavigation) {
                CollegesListView(schools: model.schools)
                    .navigationDestination(for: CollegeDestination.self) {
                        switch $0 {
                        case let .college(college):
                            CollegeView(model: .init(college: college))
                        case let .majors(college, majors):
                            MajorsView(model: .init(college: college, majors: majors))
                        case let .major(college, major, isFavorite):
                            CollegeMajorView(model: .init(major: major, college: college, isFavorite: isFavorite))
                        }
                    }
            }
            .tabItem(collegesTabItem)
            .tag(Tabs.colleges)
           
            NavigationStack(path: $appState.mapNavigation) {
                MapView(locations: model.getAllBranches())
                    .navigationDestination(for: CollegeDestination.self) {
                        switch $0 {
                        case let .college(college):
                            CollegeView(model: .init(college: college))
                        case let .majors(college, majors):
                            MajorsView(model: .init(college: college, majors: majors))
                        case let .major(college, major, isFavorite):
                            CollegeMajorView(model: .init(major: major, college: college, isFavorite: isFavorite))
                        }
                    }
            }
            .tabItem(mapTabItem)
            .tag(Tabs.map)
            
            NavigationStack(path: $appState.favoritesNavigation) {
                FavoritesView(model: .init(colleges: model.schools))
                    .navigationDestination(for: CollegeDestination.self) {
                        switch $0 {
                        case let .college(college):
                            CollegeView(model: .init(college: college))
                        case let .majors(college, majors):
                            MajorsView(model: .init(college: college, majors: majors))
                        case let .major(college, major, isFavorite):
                            CollegeMajorView(model: .init(major: major, college: college, isFavorite: isFavorite))
                        }
                    }
                    
            }
            .tabItem(favoritesTabItem)
            .tag(Tabs.favorites)
            ProfileView()
                .tabItem(profileTabItem)
                .tag(Tabs.profile)
        }
        .tint(Color.oeBlue.gradient)
        .environmentObject(appState)
    }
}

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

