import SwiftUI

struct SchoolView: View {
    
    let passedschools: School
    
    var body: some View {
        ZStack {
            ScrollView{
                VStack(spacing: 0){
                    SchoolImage(image: passedschools.image)
                    SchoolDescriptionView(passedschools: passedschools)
                    Menu(contact: passedschools)
                    SocialMediaView(socialMedia: passedschools.socialMedia)
                }
            }
        }.navigationBarItems(trailing: Image(systemName: "info.circle"))
    }
}
