import SwiftUI

struct SchoolView: View {
    
    let school: School
    @Environment(\.presentationMode) var presentationMode
    @State var descriptionIsShown = false
    @State private var navigationSelectionTag: Int? = 0
    
    var body: some View {
        ZStack {
            WhiteBackground()
            VStack(spacing: 0){
                SchoolImage(school: school)
                SchoolDescriptionView(school: school)
                SchoolMajor(school: school)
                SocialMediaView(school: school)
            }
        }
        .ignoreEdges(edge: .vertical)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(
            leading: Button(action: { dismiss() }) {
                Image.chevronLight
                    .modifier(NavBarButtonModifier(font: .regularTitle3, edge: .trailing, padding: 30, radius1: 10, radius2: 7))
            },
            trailing: Button(action: { toAbout() }) {
                Image.infoCircle
                    .modifier(NavBarButtonModifier(font: .regularTitle2, edge: .leading, padding: 30, radius1: 7, radius2: 3))
            }.sheet(isPresented: $descriptionIsShown, content: {
                SchoolAboutView(school: school)
            })
        )
    }
    
    func toAbout() {
        descriptionIsShown.toggle()
    }
    
    func dismiss() {
        self.presentationMode.wrappedValue.dismiss()
    }
}
