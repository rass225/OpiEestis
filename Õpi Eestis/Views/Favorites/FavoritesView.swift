import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject private var pathManager: PathManager
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
        .navigationDestination(for: Model.Favorite.self) { favorite in
            CollegeMajorView(
                model: .init(
                    major: favorite.major,
                    college: favorite.college
                )
            )
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
        .setColor(.darkGray)
        .maxSize()
        .background(Color.whiteDim1)
    }
    
    @ViewBuilder
    func majorCell(_ major: majorsMinors, schoolName: String) -> some View {
        if let college = model.colleges.first(where: { $0.name == schoolName}) {
            HStack{
                VStack(alignment: .leading, spacing: 3) {
                    Text(major.name)
                        .setFont(.callout, .medium, .rounded)
                        .setColor(.black)
                    Text("\(major.level.rawValue.capitalized) \(major.language.symbol)")
                        .setFont(.subheadline, .medium, .rounded)
                        .setColor(college.palette.base)
                }
            }
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
                    .setColor(.black)
            }
            .padding(.top)
            .listRowInsets(.eight)
        } else {
            Text(name)
                .setFont(.callout, .medium, .rounded)
                .setColor(.black)
                .listRowInsets(.eight)
        }
    }
    
    func navigateToMajor(college: College, major: majorsMinors) {
        let favorite: Model.Favorite = .init(
            college: college,
            major: major
        )
        pathManager.path.append(favorite)
    }
}
