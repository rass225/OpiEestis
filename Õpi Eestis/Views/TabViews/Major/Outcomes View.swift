import SwiftUI

struct Outcomes_View: View {
    let major: majorsMinors
    let navBar = NavigationBarTitles()
    var body: some View {
        ZStack{
            WhiteBackground()
            ScrollView{
                ForEach(major.outcomes, id: \.self) { hey in
                    Text("\u{2022} \(hey)")
                        .font(.lightCallout)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.black)
                        .padding(.vertical, 8)
                }
                .lineSpacing(5)
                .padding(.horizontal, 16)
            }
        }.navigationBarTitle(navBar.outcomesTitle, displayMode: .automatic)
    }
}
