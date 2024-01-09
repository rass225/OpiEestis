import SwiftUI

struct FavoritesViewWrapper: View {
    @EnvironmentObject private var appState: AppState
    let colleges: [College]
    
    var body: some View {
        switch appState.authState {
        case let .authenticated(user):
            FavoritesView(model: .init(colleges: colleges, user: user))
        case .unauthenticated:
            UnauthenticatedView(
                title: Theme.Locale.Favorites.unauthenticated,
                action: { appState.signInApple() }
            )
            .background(Color.white)
            .toolbar(.visible, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }
    }
}

struct FavoritesView: View {
    @EnvironmentObject private var appState: AppState
    @StateObject var model: Model
    
    var body: some View {
        VStack(spacing: 0) {
            if model.favorites.isEmpty {
                emptyView()
            } else {
                List(model.colleges, id: \.id) { college in
                    collegeCell(college)
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal, content: AppPrincipal.init)
        }
    }
}

// MARK: - Cells
private extension FavoritesView {
    @ViewBuilder
    func collegeCell(_ college: College) -> some View {
        if let favoritesForCollege = model.groupedFavorites[college.id] {
            Section(header: schoolHeader(college)) {
                ForEach(favoritesForCollege, id: \.id) { favorite in
                    majorCell(favorite.major, schoolName: college.name)
                }
            }
        }
    }
    
    @ViewBuilder
    func majorCell(_ major: NewMajor, schoolName: String) -> some View {
        if let college = model.colleges.first(where: { $0.name == schoolName}) {
            MajorsView.MajorCell(
                major: major,
                isFavorite: true,
                baseColor: college.palette.base,
                showDetailed: true,
                routeToMajor: {
                    appState.route(to: .majorRemote(
                        college: college,
                        major: major,
                        isFavorite: true
                    ))
                },
                removeFavorite: {
                    model.removeFavorite(major: major, college: college)
                },
                addFavorite: {},
                unFavoriteButtonRole: .destructive,
                allowSwipeActions: true,
                matchingPercentage: nil
            )
        }
    }
}

// MARK: - Header
private extension FavoritesView {
    @ViewBuilder
    func schoolHeader(_ college: College) -> some View {
        HStack(spacing: 3){
            Image(college.logoRef)
                .resizable()
                .fit()
                .frame(height: 24, alignment: .leading)
                .setColor(college.palette.base)
            Text(model.currentLocale == .estonian ? college.name.capitalized : college.nameEn.capitalized)
                .setFont(.body, .medium, .rounded)
                .textCase(.none)
                .setColor(Theme.Colors.black)
        }
        .padding(.top)
        .listRowInsets(.eight)
    }
}

// MARK: - View Components
private extension FavoritesView {
    @ViewBuilder
    func emptyView() -> some View {
        VStack(spacing: 10){
            Theme.Icons.error
                .setFont(.largeTitle, .regular, .rounded)
            Text(Theme.Locale.Favorites.empty)
                .setFont(.subheadline, .regular, .rounded)
        }
        .setColor(.gray)
        .maxSize()
        .background(Theme.Colors.systemGray)
    }
}
