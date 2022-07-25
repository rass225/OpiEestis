import SwiftUI

struct MajorDescriptionModule: View {
    let text: [String]
    let school: School
    @State var isExpanded = false
    var body : some View {
        VStack(spacing: 0){
            Header(type: .description, school: school)
            Button(action: {
                withAnimation{
                    isExpanded.toggle()
                }
            }) {
                if isExpanded {
                    VStack(alignment: .leading, spacing: 0){
                        ForEach(text, id: \.self) { element in
                            Text(element)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .multilineTextAlignment(.leading)
                                .padding(.bottom)
                        }
                    }
                } else {
                    Text(shortDescription(text: text[0]))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .multilineTextAlignment(.leading)
                        .lineLimit(7)
                        .padding(.bottom)
                }
            }
            .font(.regularSubHeadline)
            .foregroundColor(.black)
            .buttonStyle(PlainButtonStyle())
            Text(isExpanded ? OEAppearance.Locale.expanded.isExpanded : OEAppearance.Locale.expanded.notExpanded)
                .foregroundColor(.darkGray)
                .font(Font.caption2)
            Divider()
        }
        .padding(.horizontal, 25)
        
    }
    
    func shortDescription(text: String) -> String {
        let dots = "..."
        let finalString = text + dots
        return finalString
    }
}
