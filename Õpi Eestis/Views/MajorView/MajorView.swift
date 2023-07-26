import SwiftUI
import MessageUI
import MapKit

struct MajorView: View {
    @EnvironmentObject var appState: AppState
    @ObservedObject var presenter = UserDefaultManager()
    @State var isFavorite = false
    @State var toFavorites = false
    let major: majorsMinors
    let school: School
    
    var body: some View {
        ScrollView{
            VStack(spacing: 0){
                MajorsTitleView(major: major, school: school)
                MajorStats(major: major, school: school)
                MajorDescriptionModule(text: major.description, school: school)
                MajorCourseModule(major: major, school: school)
                MajorAdmissionModule(major: major, school: school)
                MajorOutcomesModule(major: major, school: school)
                MajorPersonnelModule(major: major, school: school)
                MajorWebsiteModule(major: major, school: school)
                MajorLocationModule(school: school, major: major)
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationDestination(isPresented: $toFavorites) {
            FavoritesView(isNavigated: true)
        }
        .toolbar{
            AppToolbarItem(.logo(school: school), color: school.color)
            AppToolbarItem(.dismiss, color: school.color)
            AppToolbarItem(.majorFavorites(toggle: $isFavorite, school: school, major: major, toFavorites: $toFavorites), color: school.color)
        }
    }
    
    @ViewBuilder
    func favoriteLabel() -> some View {
        Menu {
            Button(action: {
                favoriteManager(school: school, major: major)
            }) {
                if major.isFavorite(school: school) {
                    Label("Eemalda", systemImage: "minus")
                } else {
                    Label("Lisa", systemImage: "plus")
                }
            }
            Button(action: {
                toFavorites.toggle()
            }) {
                Label("Lemmikud", systemImage: "folder")
            }
        }
        label: {
            if isFavorite {
                isFavoriteLabel()
            } else {
                isNotFavoriteLabel()
            }
        }
    }
    
    private func favoriteManager(school: School, major: majorsMinors) {
        if isFavorite {
            presenter.removeFavorite(school: school, majorName: major.name)
            isFavorite = false
        } else {
            let favorite = Favorites(school: school, majors: [major])
            presenter.addFavorite(favorite: favorite)
            isFavorite = true
        }
    }
    
    @ViewBuilder
    func isFavoriteLabel() -> some View {
        Image.starFill
            .foregroundStyle(school.color.gradient)
            .font(.callout)
            .fontWeight(.semibold)
    }
    
    @ViewBuilder
    func isNotFavoriteLabel() -> some View {
        Image.star
            .foregroundColor(school.color)
            .font(.callout)
            .fontWeight(.semibold)
    }
}

struct Favorites: Codable, Hashable {
    var school: School
    var majors: [majorsMinors]
}
//i love rasmus <3
