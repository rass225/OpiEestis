import SwiftUI

struct FavoritesView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var database = UserDefaultManager()
    @State var favorites = [Favorites]()
    @State var toMajors = false
    @State var toAboutActive = false
    @State var destination: AnyView = AnyView(SchoolListView())
    let isNavigated: Bool
    
    var body: some View {
        VStack{
            if favorites.isEmpty {
                emptyView()
            } else {
                List(favorites, id: \.self) { favorite in
                    Section(content: {
                        ForEach(favorite.majors, id: \.self) { major in
                            majorCell(major, schools: favorite)
                        }
                    }, header: {
                        schoolHeader(favorite)
                    })
                }
            }
        }
        .background(Color.whiteDim1)
        .onAppear{
            favorites = database.retrieveAllFavorites()
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
    
    func goToMajor(school: School, major: majorsMinors) {
        destination = AnyView(MajorView(isFavorite: true, major: major, school: school))
        toMajors.toggle()
    }
    
    @ViewBuilder
    func emptyView() -> some View {
        VStack(spacing: 10){
            Image(systemName: "exclamationmark.triangle").font(.largeTitle)
            Text("Sul ei ole ühtegi lemmikut lisatud").font(.regularSubHeadline)
        }.foregroundColor(.darkGray)
    }
    
    @ViewBuilder
    func majorCell(_ major: majorsMinors, schools: Favorites) -> some View {
        NavigationLink(destination: MajorView(isFavorite: true, major: major, school: schools.school)) {
            HStack{
                VStack(alignment: .leading, spacing: 3) {
                    Text(major.name)
                        .font(.regularCallout)
                        .foregroundColor(.black)
                    Text(major.level.rawValue.capitalizingFirstLetter())
                        .font(.caption)
                        .fontWeight(.medium)
                        .foregroundColor(schools.school.color)
                }
            }
        }
    }
    
    @ViewBuilder
    func schoolHeader(_ favorite: Favorites) -> some View {
        HStack(spacing: 3){
            Image(favorite.school.logo.rawValue)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20, alignment: .leading)
                .foregroundColor(favorite.school.color)
            Text(favorite.school.name.rawValue)
                .font(.mediumCallout)
                .foregroundColor(.black)
        }
    }
}
