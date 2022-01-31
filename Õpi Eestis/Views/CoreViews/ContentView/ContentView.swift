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
        NavigationView{
            VStack(spacing: 0){
                mainContainer().id(appState.rootViewId)
                HStack{
                    TabBarItem(selectedType: $selectedTab, type: .list)
                    TabBarItem(selectedType: $selectedTab, type: .map)
                    TabBarItem(selectedType: $selectedTab, type: .favorites)
                }
                .padding(.top, 10)
                .background(Color.white)
                .cornerRadiusCustom(25, corners: [.topLeft, .topRight])
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
    
    func mainContainer() -> AnyView {
        switch selectedTab {
        case .list:
            return AnyView(SchoolListView())
        case .map:
            return AnyView(MapView().padding(.bottom, -20))
        case .favorites:
            return AnyView(FavoritesView(isNavigated: false))
        }
    }
    
    private struct TabBarItem: View {
        @Binding var selectedType: TabItem
        
        let type: TabItem
        
        var body: some View {
            HStack{
                Spacer()
                Button(action: {
                    selectedType = type
                }) {
                    switch type {
                    case .list:
                        Image.listDash
                            .foregroundColor(.oeBlue.opacity(selectedType == type ? 1 : 0.7))
                            .font(selectedType == type ? .mediumTitle2 : .lightTitle2)
                    case .map:
                        if selectedType == type {
                            Image.mapFill
                                .foregroundColor(.oeBlue)
                                .font(.mediumTitle2)
                        } else {
                            Image.map
                                .foregroundColor(.oeBlue.opacity(0.7))
                                .font(.mediumTitle2)
                        }
                    case .favorites:
                        if selectedType == type {
                            Image.starFill
                                .foregroundColor(.oeBlue)
                                .font(.mediumTitle2)
                        } else {
                            Image.star
                                .foregroundColor(.oeBlue.opacity(0.7))
                                .font(.mediumTitle2)
                        }
                    }
                }.buttonStyle(PlainButtonStyle())
                Spacer()
            }
        }
    }
}
