import SwiftUI

struct MajorButtonsView: View {
    @State var passedMajor: majorsMinors
    var body: some View {
        VStack(spacing: 0){
            Divider()
            NavigationLink(destination: Description_View(passedMajor: passedMajor)){
                MajorButton(image: "doc.text", label: "Eriala kirjeldus")
                    .modifier(MajorButtonModifier())
            }
            
            Divider()
            
            NavigationLink(destination: Requirements_View(passedMajor: passedMajor.requirements)) {
                MajorButton(image: "person.crop.circle.badge.checkmark", label: "Sisseastumine")
                    .modifier(MajorButtonModifier())
            }
            
            Divider()
            
            NavigationLink(destination: Outcomes_View(passedMajor: passedMajor)){
                MajorButton(image: "briefcase", label: "Õpiväljundid")
                    .modifier(MajorButtonModifier())
            }
            
            Divider()
            
            Button(action:{
                guard let url = URL(string: passedMajor.majorWebsite as String) else { return }
                UIApplication.shared.open(url)
            }) {
                MajorButton(image: "link", label: "Eriala koduleht")
                    .modifier(MajorButtonModifier())
            }
        }
    }
}
