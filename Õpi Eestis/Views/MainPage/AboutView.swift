import SwiftUI

struct AboutView: View {
    
    let about = About()
    let navBar = NavigationBarTitles()
    var body: some View {
        ZStack{
            WhiteBackground()
            VStack(spacing: 0){
                ScrollView{
                    ForEach(about.aboutText, id: \.self) { item in
                        Text(item)
                            .padding(20)
                            .lineSpacing(5)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }.font(.lightCallout)
                }
                VStack(spacing: 20){
                    Divider()
                    Text(about.authorText)
                    Text(about.copyright)
                }.font(.lightCaption)
                .padding(.bottom, 5)
            }
            .foregroundColor(.black)
            .navigationBarTitle(navBar.aboutTitle, displayMode: .inline)
        }
    }
}
