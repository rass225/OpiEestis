import SwiftUI

struct MajorButtonsView: View {
    
    let major: majorsMinors
    
    var body: some View {
        VStack(spacing: 0){
            Divider().background(Color.black)
            MajorNavigationLink(image: .doc, label: "Eriala kirjeldus", destination: { Description_View(major: major) })
            Divider()
            MajorNavigationLink(image: .requirements, label: "Sisseastumine", destination: { Requirements_View(requirements: major.requirements) })
            Divider()
            MajorNavigationLink(image: .outcomes, label: "Õpiväljundid", destination:{ Outcomes_View(major: major)})
            Divider()
            Button(action:{ toExtra() }) {
                drawButton(image: .link, label: "Vaata lisa")
            }
        }
    }
    
    @ViewBuilder private func drawButton(image: String, label: String) -> some View {
        ZStack{
            HStack{
                Image(systemName: image)
                    .font(.lightTitle)
                    .frame(width: 35)
                    .padding(.trailing, 25)
                Spacer()
                Image.chevronRight
            }
            Text(label).font(.regularCallout)
        }.foregroundColor(.black)
        .padding(.horizontal, 25)
        .frame(minHeight: 0, maxHeight: .infinity)
        .background(Color.whiteDim)
    }
    
    func toExtra() {
        guard let url = URL(string: major.majorWebsite as String) else { return }
        UIApplication.shared.open(url)
    }
}
