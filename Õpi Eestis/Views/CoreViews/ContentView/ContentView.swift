import SwiftUI
import Foundation
import UIKit
import FirebaseAuth
import FirebaseStorage
import FirebaseFirestore

struct ContentView: View {
    @StateObject var model = Model()
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
            CollegesListView(schools: model.schools)
                .tabItem({
                    Label("Koolid", systemImage: "graduationcap.fill")
                })
            NavigationStack {
                MapView(schools: model.schools, locations: model.getAllBranches())
            }
            .tabItem({
                Label("Kaart", systemImage: "map.fill")
            })
            NavigationStack {
                FavoritesView(isNavigated: false)
                
            }.tabItem({
                Label("Lemmikud", systemImage: "star.fill")
            })
        })
        .tint(Color.oeBlue)
    }
}


