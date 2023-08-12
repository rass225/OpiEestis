import SwiftUI

struct FavoritesView: View {
    let userDefaults = UserDefaultsManager()
    @State var favorites: [String: [majorsMinors]] = [:]
    @State var toMajors = false
    @State var toAboutActive = false
    @State var destination: AnyView = AnyView(EmptyView())
    let isNavigated: Bool
    let colleges: [College]
    
    var body: some View {
        VStack{
            if favorites.isEmpty {
                emptyView()
            } else {
                List(favorites.keys.sorted(), id: \.self) { key in
                    if let favoriteMajorsMinors = favorites[key] {
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
        .background(Color.whiteDim1)
        .onAppear{
            favorites = userDefaults.getAllFavorites()
        }
        .navigationDestination(isPresented: $toMajors) {
            destination
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(isNavigated ? false : true)
        .toolbar {
            AppToolbarItem(.title(type: .favorites), color: .oeBlue)
            AppToolbarItem(.conditionalDismiss(isAvailable: isNavigated), color: .oeBlue)
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
        .foregroundColor(.darkGray)
        .maxSize()
    }
    
    @ViewBuilder
    func majorCell(_ major: majorsMinors, schoolName: String) -> some View {
        if let college = colleges.first(where: { $0.name == schoolName}) {
            NavigationLink(destination: CollegeMajorView(model: .init(major: major, college: college))) {
                HStack{
                    VStack(alignment: .leading, spacing: 3) {
                        Text(major.name)
                            .setFont(.callout, .medium, .rounded)
                            .setColor(.black)
                        Text(major.level.rawValue.capitalized)
                            .setFont(.subheadline, .medium, .rounded)
                            .setColor(college.palette.base)
                    }
                }
            }
        }
    }
    
    @ViewBuilder
    func schoolHeader(_ name: String) -> some View {
        if let college = colleges.first(where: { $0.name == name}) {
            HStack(spacing: 3){
                Image(college.logoRef)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20, alignment: .leading)
                    .foregroundColor(college.palette.base)
                Text(college.name.capitalized)
                    .font(.mediumCallout)
                    .textCase(.none)
                    .foregroundColor(.black)
            }
            .listRowInsets(.init(top: 8, leading: 8, bottom: 8, trailing: 8))
        } else {
            Text(name)
                .font(.mediumCallout)
                .foregroundColor(.black)
                .listRowInsets(.init(top: 8, leading: 8, bottom: 8, trailing: 8))
        }
    }
}
