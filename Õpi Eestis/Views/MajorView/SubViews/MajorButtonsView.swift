import SwiftUI

struct MajorButtonsView: View {
    @EnvironmentObject var theme: Theme
    let major: majorsMinors
    
    
    var body: some View {
        VStack(spacing: 0){
            MajorNavigationLink(image: .docFill, label: Locale.title.description, destination:{ Description_View(major: major)}, color: theme.colorTheme)
            if major.modules != nil {
                MajorNavigationLink(image: .stackFill, label: Locale.title.modules, destination:{ CourseView(major: major)}, color: theme.colorTheme)
            }

            MajorNavigationLink(image: .requirementsFill, label: Locale.title.requirements, destination: { Requirements_View(requirements: major.requirements)}, color: theme.colorTheme)
            MajorNavigationLink(image: .outcomesFill, label: Locale.title.outcomes, destination:{ Outcomes_View(major: major)}, color: theme.colorTheme)

            Button(action:{ toExtra() }) {
                drawButton(image: .linkFill, label: Locale.title.extra, bg: theme.colorTheme, fg: .white)
            }
            Spacer()
        }
    }
    
    @ViewBuilder private func drawButton(image: Image, label: String, bg: Color, fg: Color) -> some View {
        ZStack{
            HStack{
                image
                    .font(.semiBoldTitle)
                    .frame(width: 35)
                    .padding(.trailing, 25)
                    .foregroundColor(bg)
                Spacer()
                if label == Locale.title.extra {
                    Image.chevronRight.font(.regularTitle3)
                }
                
            }
            Text(label).font(.regularCallout)
        }.foregroundColor(.black)
        .padding(.leading, 25)
        .padding(.trailing, 10)
        
        .frame(minHeight: 0, maxHeight: 60)
        .background(Color.white)
        .cornerRadius(7)
        .padding(.horizontal, 20)
    }
    
    func toExtra() {
        guard let url = URL(string: major.majorWebsite as String) else { return }
        UIApplication.shared.open(url)
    }
}
