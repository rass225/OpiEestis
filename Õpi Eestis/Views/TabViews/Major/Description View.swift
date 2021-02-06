import SwiftUI

struct Description_View: View {
    let major: majorsMinors
    let navBar = NavigationBarTitles()
    
    var body: some View {
        ZStack{
            WhiteBackground()
            ScrollView{
                ForEach(major.description, id: \.self) { hey in
                    Text(hey)
                        .font(.lightCallout)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 8)
                }.lineSpacing(5)
                .padding(.horizontal, 16)
            }
        }.navigationBarTitle(navBar.descriptionTitle, displayMode: .automatic)
    }
}

