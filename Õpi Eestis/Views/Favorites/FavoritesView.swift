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
        ZStack{
            NavigationLink(destination: destination, isActive: $toMajors) { EmptyView() }
            Color.whiteDim1.ignoreEdges(edge: .all)
            if favorites.isEmpty {
                VStack(spacing: 10){
                    Image(systemName: "exclamationmark.triangle").font(.largeTitle)
                    Text("Sul ei ole ühtegi lemmikut lisatud").font(.regularSubHeadline)
                }.foregroundColor(.darkGray)
                
            } else {
                ScrollView{
                    ForEach(favorites, id: \.self) { schools in
                        VStack(alignment: .leading, spacing: 7){
                            HStack(spacing: 3){
                                Image(schools.school.logo.rawValue)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20, alignment: .leading)
                                    .foregroundColor(schools.school.color)
                                    
                                Text(schools.school.name.rawValue)
                                    .font(.semiBoldBody)
                                    .foregroundColor(.black)
                               
                            }
                            
                            VStack(alignment: .leading, spacing: 3){
                                ForEach(schools.majors, id: \.self) { major in
                                    NavigationLink(destination: MajorView(isFavorite: true, major: major, school: schools.school)) {
                                        HStack{
                                            VStack(alignment: .leading, spacing: 3) {
                                                Text(major.name)
                                                    .font(.regularCallout)
                                                    .foregroundColor(.black)
                                                Text(major.level.rawValue.capitalizingFirstLetter())
                                                    .font(.regularCaption)
                                                    .foregroundColor(.darkGray)
                                            }
                                            Spacer()
                                            Chevron(type: .normal)
                                        }
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.vertical, 10)
                                        .padding(.horizontal, 10)
                                        .background(Color.white)
                                        .cornerRadius(10)
                                    }
                                }
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 5)
                        .padding(.top, 10)
                    }.padding()
                }.frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .onAppear{
            favorites = database.retrieveAllFavorites()
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(false)
        .toolbar {
            AppToolbarItem(.title(type: .favorites), color: .oeBlue)
            AppToolbarItem(.conditionalDismiss(isAvailable: isNavigated), color: .oeBlue)
        }
    }
    
    func goToMajor(school: School, major: majorsMinors) {
        destination = AnyView(MajorView(isFavorite: true, major: major, school: school))
        toMajors.toggle()
    }
}
