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
                            case let .collegeMap(college):
                                CollegeMapView(model: .init(college: college, region: .init()))
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
                            case let .collegeMap(college):
                                CollegeMapView(model: .init(college: college, region: .init()))
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
                            case let .collegeMap(college):
                                CollegeMapView(model: .init(college: college, region: .init()))
                            }
                        }
                }
                .tabItem(favoritesTabItem)
                .tag(Tabs.favorites)
//                ProfileView()
//                    .tabItem(profileTabItem)
//                    .tag(Tabs.profile)
            }
            .tint(Theme.Colors.primary.gradient)
        }
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


extension UITabBarController {
    open override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        tabBar.layer.masksToBounds = true
//        tabBar.layer.cornerRadius = 16
        // Choose with corners should be rounded
//        tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner] // top left, top right

        // Uses `accessibilityIdentifier` in order to retrieve shadow view if already added
        if let shadowView = view.subviews.first(where: { $0.accessibilityIdentifier == "TabBarShadow" }) {
            shadowView.frame = tabBar.frame
        } else {
            let shadowView = UIView(frame: .zero)
            shadowView.frame = tabBar.frame
            shadowView.accessibilityIdentifier = "TabBarShadow"
            shadowView.backgroundColor = UIColor.white
            shadowView.layer.cornerRadius = tabBar.layer.cornerRadius
            shadowView.layer.maskedCorners = tabBar.layer.maskedCorners
            shadowView.layer.masksToBounds = false
            shadowView.layer.shadowColor = Color.black.cgColor
            shadowView.layer.shadowOffset = CGSize(width: 0.0, height: -8.0)
            shadowView.layer.shadowOpacity = 0.1
            shadowView.layer.shadowRadius = 4
            view.addSubview(shadowView)
            view.bringSubviewToFront(tabBar)
        }
    }
}
