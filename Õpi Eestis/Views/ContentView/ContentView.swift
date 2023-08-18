import SwiftUI
import CoreLocation
import MapKit
struct ContentView: View {
    @StateObject private var model = Model()
    @StateObject private var collegesPathManager = PathManager()
    @StateObject private var mapPathManager = PathManager()
    @StateObject private var favoritesPathManager = PathManager()
    @State var tabSelection: Tabs = .colleges
    
    var body: some View {
        TabView(selection: $tabSelection) {
            NavigationStack(path: $collegesPathManager.path) {
                CollegesListView(schools: model.schools)
            }
            .environmentObject(collegesPathManager)
            .tabItem(collegesTabItem)
            .tag(Tabs.colleges)
            
            NavigationStack(path: $mapPathManager.path) {
                MapView(locations: model.getAllBranches())
            }
            .environmentObject(mapPathManager)
            .tabItem(mapTabItem)
            .tag(Tabs.map)
            
            NavigationStack(path: $favoritesPathManager.path) {
                FavoritesView(model: .init(colleges: model.schools))
            }
            .environmentObject(favoritesPathManager)
            .tabItem(favoritesTabItem)
            .tag(Tabs.favorites)
        }
        .tint(Color.oeBlue.gradient)
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
}

