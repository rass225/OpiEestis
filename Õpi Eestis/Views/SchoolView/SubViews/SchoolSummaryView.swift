import SwiftUI

struct SchoolSummaryView: View {
    let school: School
    @State var isExpanded = false
    var body: some View {
        Button(action: {
            withAnimation{ isExpanded.toggle() }
        }) {
            VStack(alignment: .center, spacing: 0){
                Header(type: .summary, school: school)
                
                if isExpanded {
                    ForEach(school.description, id: \.self) { item in
                        Text(item)
                            .padding(.bottom, 16)
                            .frame(maxWidth: .infinity, alignment: .leading)   
                    }
                } else {
                    Text(shortDescription(text: school.description[0]))
                        .padding(.bottom, 16)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .lineLimit(isExpanded ? nil : 7)
                }
                Text(isExpanded ? OEAppearance.Locale.expanded.isExpanded : OEAppearance.Locale.expanded.notExpanded)
                    .foregroundColor(.gray)
                    .font(.caption2)
                Divider().padding(.top, 3)
            }
            
            .foregroundColor(.black)
            .font(.regularSubHeadline)
        }.buttonStyle(PlainButtonStyle())
        .padding(.horizontal, 25)
        
    }
    
    func shortDescription(text: String) -> String {
        let dots = "..."
        let finalString = text + dots
        return finalString
    }
}
