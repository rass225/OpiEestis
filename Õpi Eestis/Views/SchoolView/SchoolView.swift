import SwiftUI

struct SchoolView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var presenter = SchoolViewPresenter()
    let school: School

    
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
        .ignoreEdges(edge: .vertical)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(
            leading: Button(action: { dismiss() }) {
                Image.chevronLight
                    .modifier(NavBarButtonModifier(font: .regularTitle3, edge: .trailing, padding: 30, radius1: 10, radius2: 7))
            },
            trailing: Button(action: { presenter.toAbout() }) {
                Image.infoCircle
                    .modifier(NavBarButtonModifier(font: .regularTitle2, edge: .leading, padding: 30, radius1: 7, radius2: 3))
            }.sheet(isPresented: $presenter.descriptionIsShown, content: {
                SchoolAboutView(school: school)
            })
        )
    }
    func dismiss() {
        self.presentationMode.wrappedValue.dismiss()
    }
}
