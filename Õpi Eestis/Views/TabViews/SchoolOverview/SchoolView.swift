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
        }.edgesIgnoringSafeArea(.vertical)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(
            leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image.chevronLight
                    .shadow(color: Color.black, radius: 10, x: 0, y: 0)
                    .shadow(color: Color.black, radius: 7, x: 0, y: 0)
                    .foregroundColor(Color.white)
                    .font(.regularTitle3)
                    .padding(.trailing, 30)
            },
            trailing: Button(action: { descriptionIsShown.toggle() }) {
                HStack{
                    Image.infoCircle.font(.regularTitle2)
                }.shadow(color: Color.black, radius: 7, x: 0, y: 0)
                .shadow(color: Color.black.opacity(0.5), radius: 3, x: 0, y: 0)
                .foregroundColor(Color.white)
                .font(.regularBody)
                .padding(.leading, 30)
            }.sheet(isPresented: $descriptionIsShown, content: {
                SchoolAboutView(school: school)
            })
        )
    }
}
