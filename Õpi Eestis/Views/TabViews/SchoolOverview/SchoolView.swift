import SwiftUI
import UIKit
import MessageUI

struct SchoolView: View {
    
    @State var passedschools: School
    @State private var draggedEffect = CGSize.zero
    @State private var dragzoom = CGSize.zero
    
    var body: some View {
        ZStack {
            ScrollView{
                VStack(spacing: 0){
                    
                    Image(passedschools.image)
                        .resizable()
                        .frame(height: UIScreen.main.bounds.width / 1.7)
                        .scaledToFit()
                        
                    SchoolDescriptionView(passedschools: passedschools)
                    Menu(contact: $passedschools)
                    SocialMediaView(socialMedia: passedschools.socialMedia)
                }
            }
        }.navigationBarItems(trailing: Image(systemName: "info.circle"))
    }
}
