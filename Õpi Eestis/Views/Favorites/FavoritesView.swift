import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject private var appState: AppState
    @StateObject var model: Model
    
    var body: some View {
        VStack{
            if model.favorites.isEmpty {
                emptyView()
            } else {
                List(model.favorites.keys.sorted(), id: \.self) { key in
                    if let favoriteMajorsMinors = model.favorites[key] {
                        Section(content: {
                            ForEach(favoriteMajorsMinors, id: \.self) { major in
                                majorCell(major, schoolName: key)
                            }
                        }, header: {
                            schoolHeader(key)
                        })
                    }
                }
            }
        }
    }
    
    @ViewBuilder
    func emptyView() -> some View {
        VStack(spacing: 10){
            Image(systemName: "exclamationmark.triangle")
                .font(.largeTitle)
            Text("Sul ei ole ühtegi lemmikut lisatud")
                .setFont(.subheadline, .medium, .rounded)
        }
        .setColor(.gray)
        .maxSize()
        .background(Theme.Colors.systemGray)
    }
    
    @ViewBuilder
    func majorCell(_ major: Major, schoolName: String) -> some View {
        if let college = model.colleges.first(where: { $0.name == schoolName}) {
            VStack(alignment: .leading, spacing: 2) {
                Text(major.name)
                    .setFont(.callout, .medium, .rounded)
                    .setColor(Theme.Colors.black)
                VStack(alignment: .leading, spacing: 24) {
                    Text(major.level.rawValue.capitalized)
                        .setFont(.subheadline, .medium, .rounded)
                        .setColor(college.palette.base)
                    HStack(spacing: 8) {
                        Text("\(major.language.secondaryLabel)")
                        Text("•")
                        Text("\(major.duration.formattedDecimals(1)) \(major.duration == 1.0 ? "aasta" : "aastat")")
                        Text("•")
                        Text(major.cost.amount == 0 ? "Tasuta" : "€€€")
                    }
                    .setColor(.gray)
                    .setFont(.footnote, .medium, .rounded)
                }
            }
            .padding(.vertical, 4)
            .swipeActions {
                Button(role: .destructive) {
                    model.removeFavorite(major: major, college: college)
                } label: {
                    Image(systemName: "heart.slash")
                }
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
    
    func navigateToMajor(college: College, major: Major) {
        appState.route(to: .major(college: college, major: major, isFavorite: true))
    }
}
