import SwiftUI

struct Outcomes_View: View {
    let major: majorsMinors
    let navBar = NavigationBarTitles()
    var body: some View {
        ZStack{
            Color.whiteDim1.edgesIgnoringSafeArea(.all)
            ScrollView{
                VStack(spacing: 0){
                    ForEach(major.outcomes, id: \.self) { hey in
                        VStack{
                            Text("\(hey)")
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(.black)
                                .font(.regularCallout)
                                .lineSpacing(5)
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .background(Color.white)
                        .cornerRadius(6)
                        .padding(.horizontal)
                        .padding(.top, 8)
                    }
                }
                
            }
        }.navigationBarTitle(navBar.outcomesTitle, displayMode: .automatic)
    }
}
