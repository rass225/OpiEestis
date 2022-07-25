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
        ZStack{
            NavigationLink(destination: FavoritesView(isNavigated: true), isActive: $toFavorites) {
                EmptyView()
            }
            Color.white.edgesIgnoringSafeArea(.bottom)
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
        }
        .navigationBarBackButtonHidden(true)
        .toolbar{
            AppToolbarItem(.logo(school: school), color: school.color)
            AppToolbarItem(.dismiss, color: school.color)
            AppToolbarItem(.majorFavorites(toggle: $isFavorite, school: school, major: major, toFavorites: $toFavorites), color: school.color)
        }
    }
}

struct Favorites: Codable, Hashable {
    var school: School
    var majors: [majorsMinors]
}
//i love rasmus <3


