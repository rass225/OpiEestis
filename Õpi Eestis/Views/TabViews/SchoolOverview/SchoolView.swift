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
                    .defaultShadow(color: .black, radius: 10)
                    .defaultShadow(color: .black, radius: 7)
                    .foregroundColor(.white)
                    .font(.regularTitle3)
                    .padding(.trailing, 30)
                
            },
            trailing: Button(action: { toAbout() }) {
                Image.infoCircle
                    .font(.regularTitle2)
                    .defaultShadow(color: .black, radius: 7)
                    .defaultShadow(color: Color.black.opacity(0.4), radius: 3)
                    .foregroundColor(.white)
                    .padding(.leading, 30)
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
