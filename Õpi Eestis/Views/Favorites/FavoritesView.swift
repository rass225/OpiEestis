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
                action: appState.signInApple
            )
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
    
    @ViewBuilder
    func collegeCell(_ college: College) -> some View {
        if let favoritesForCollege = model.groupedFavorites[college.id] {
            Section(header: schoolHeader(college.name)) {
                ForEach(favoritesForCollege, id: \.id) { favorite in
                    majorCell(favorite.major, schoolName: college.name)
                }
            }
        }
    }
    
    @ViewBuilder
    func majorCell(_ major: NewMajor, schoolName: String) -> some View {
        if let college = model.colleges.first(where: { $0.name == schoolName}) {
            VStack(alignment: .leading, spacing: 2) {
                Text(major.name)
                    .setFont(.callout, .medium, .rounded)
                    .setColor(Theme.Colors.black)
                VStack(alignment: .leading, spacing: 24) {
                    Text(major.level.label)
                        .setFont(.subheadline, .medium, .rounded)
                        .setColor(college.palette.base)
                    HStack(spacing: 8) {
                        Text(major.language.inLanguageLabel)
                        Text("•")
                        Text(Theme.Locale.Duration.getYears(amount: major.duration))
                        Text("•")
                        Text(major.cost.priceLabel)
                    }
                    .setColor(.gray)
                    .setFont(.footnote, .medium, .rounded)
                }
            }
            .padding(.vertical, 4)
            .swipeActions {
                Button(action: {
                    model.removeFavorite(major: major, college: college)
                }, label: {
                    Theme.Icons.heartSlash
                })
                .tint(.red)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .contentShape(Rectangle())
            .onTapGesture {
                navigateToMajor(college: college, major: major)
            }
        }
    }
    
    @ViewBuilder
    func schoolHeader(_ name: String) -> some View {
        if let college = model.colleges.first(where: { $0.name == name}) {
            HStack(spacing: 3){
                Image(college.logoRef)
                    .resizable()
                    .fit()
                    .frame(height: 24, alignment: .leading)
                    .setColor(college.palette.base)
                Text(college.name.capitalized)
                    .setFont(.body, .medium, .rounded)
                    .textCase(.none)
                    .setColor(Theme.Colors.black)
            }
            .padding(.top)
            .listRowInsets(.eight)
        } else {
            Text(name)
                .setFont(.callout, .medium, .rounded)
                .setColor(Theme.Colors.black)
                .listRowInsets(.eight)
        }
    }
    
    func navigateToMajor(college: College, major: NewMajor) {
        appState.route(to: .majorRemote(college: college, major: major, isFavorite: true))
    }
}
