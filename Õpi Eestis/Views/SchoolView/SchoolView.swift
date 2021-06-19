import SwiftUI

struct SchoolView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var theme: Theme
    @ObservedObject var presenter = SchoolViewPresenter()
    let school: School
    @State var isAboutTapped = false
    
    var body: some View {
        ZStack {
            Color.whiteDim1
            VStack(spacing: 0){
                SchoolImage(school: school)
                SchoolDescriptionView(school: school)
                SchoolMajor(school: school)
                SocialMediaView(school: school)
                Spacer()
            }
        }
        .ignoreEdges(edge: .top)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(
            leading: Button(action: { dismiss() }) {
                Image.chevronLight
                    .modifier(NavBarButtonModifier(font: .regularTitle3, edge: .trailing, padding: 30, radius1: 10, radius2: 7))
            }
        )
    }
    func dismiss() {
        self.presentationMode.wrappedValue.dismiss()
    }
}
