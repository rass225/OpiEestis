import SwiftUI

struct MajorButtonsView: View {
    @State var major: majorsMinors
    var body: some View {
        VStack(spacing: 0){
            Divider()
            MajorNavigationLink(image: .doc, label: "Eriala kirjeldus", destination: { Description_View(major: major) })
            Divider()
            MajorNavigationLink(image: .requirements, label: "Sisseastumine", destination: { Requirements_View(major: major.requirements) })
            Divider()
            MajorNavigationLink(image: .outcomes, label: "Õpiväljundid", destination:{ Outcomes_View(major: major)})
            Divider()
            Button(action:{
                guard let url = URL(string: major.majorWebsite as String) else { return }
                UIApplication.shared.open(url)
            }) {
                MajorButton(image: .link, label: "Vaata lisa")
                
            }
        }
    }
}
