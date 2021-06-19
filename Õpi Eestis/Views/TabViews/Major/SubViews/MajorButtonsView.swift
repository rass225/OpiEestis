import SwiftUI

struct MajorButtonsView: View {
    @EnvironmentObject var theme: Theme
    let major: majorsMinors
    
    var body: some View {
        VStack(spacing: 0){
            MajorNavigationLink(image: .doc, label: "Eriala kirjeldus", destination: { Description_View(major: major) })
            if major.modules != nil {
                MajorNavigationLink(image: .stack, label: "Õppekava", destination: { CourseView(major: major) })
            }
            MajorNavigationLink(image: .requirements, label: "Sisseastumine", destination: { Requirements_View(requirements: major.requirements) })
            MajorNavigationLink(image: .outcomes, label: "Õpiväljundid", destination:{ Outcomes_View(major: major)})
            Button(action:{ toExtra() }) {
                drawButton(image: .link, label: "Vaata lisa")
            }
            Spacer()
            Spacer()
        }.padding(.bottom, 40)
    }
    
    @ViewBuilder private func drawButton(image: Image, label: String) -> some View {
        ZStack{
            HStack{
                image
                    .font(.regularTitle3)
                    .frame(width: 35)
                    .padding(.trailing, 25)
                Spacer()
                Image.chevronRight
            }
            Text(label).font(.regularCallout)
        }.foregroundColor(.white)
        .padding(.leading, 25)
        .padding(.trailing, 10)
        .frame(minHeight: 0, maxHeight: 60)
        .background(theme.colorTheme)
        .cornerRadius(7)
        .padding(.top, 8)
        .padding(.horizontal, 20)
        
        
       
        
    }
    
    func toExtra() {
        guard let url = URL(string: major.majorWebsite as String) else { return }
        UIApplication.shared.open(url)
    }
}
