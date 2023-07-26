import SwiftUI

struct ContentView: View {
    @ObservedObject var presenter = ContentViewPresenter()
    @EnvironmentObject var appState: AppState
    @State var toAboutActive = false
    @State var selectedTab: TabItem = .list
    
    enum TabItem {
        case list
        case map
        case favorites
    }
    
    var body: some View {
        TabView(content: {
            SchoolListView()
                .tabItem({
                    Label("Koolid", systemImage: "graduationcap.fill")
                })
            NavigationStack {
                MapView()
            }
            .tabItem({
                Label("Kaart", systemImage: "map.fill")
            })
            NavigationStack {
                FavoritesView(isNavigated: false)
                
            }.tabItem({
                Label("Lemmikud", systemImage: "star.fill")
            })
            NavigationStack {
                Text("TBA")
                
            }.tabItem({
                Label("Sätted", systemImage: "gearshape.2.fill")
            })
        })
        .tint(Color.oeBlue)
    }
}
