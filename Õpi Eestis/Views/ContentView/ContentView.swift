import SwiftUI
import CoreLocation
import MapKit

struct ContentView: View {
    @StateObject private var model: Model = .init()
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        switch model.viewState {
        case .loading:
            loadingStateView()
        case .normal:
            normalStateView()
        case let .error(error):
            errorStateView(error: error)
        }
    }
}

// MARK: - ViewStates

extension ContentView {
    @ViewBuilder
    func loadingStateView() -> some View {
        ProgressView()
            .progressViewStyle(.circular)
    }
    
    @ViewBuilder
    func normalStateView() -> some View {
        TabView(selection: appState.tabSelection) {
            collegesView()
            testsView()
            favoritesView()
            profileView()
        }
        .tint(Theme.Colors.primary.gradient)
    }
    
    @ViewBuilder
    func errorStateView(error: Error) -> some View {
        ErrorView(
            error: .fetchSchools,
            viewType: .view(action: model.refresh)
        )
    }
}

// MARK: - Tabs
private extension ContentView {
    @ViewBuilder
    func profileView() -> some View {
        NavigationStack(path: $appState.profileNavigation) {
            ProfileView(colleges: model.schools)
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
    func testsView() -> some View {
        NavigationStack(path: $appState.testsNavigation) {
            TestsView(colleges: model.schools)
                .navigationDestination(for: CollegeDestination.self) {
                    appState.navigationDestination($0)
                }
        }
        .tabItem(quizTabItem)
        .tag(Tabs.tests)
    }
    
    @ViewBuilder
    func collegesView() -> some View {
        NavigationStack(path: $appState.collegeNavigation) {
            CollegesView(model: .init(schools: model.schools))
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
    }
    
    @ViewBuilder
    func quizTabItem() -> some View {
        Label(Theme.Locale.Tabs.quiz, systemImage: "doc.questionmark.fill")
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
