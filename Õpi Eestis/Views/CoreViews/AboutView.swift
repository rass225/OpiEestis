import SwiftUI

struct AboutView: View {
    
    var body: some View {
        ZStack{
            WhiteBackground()
            VStack(spacing: 0){
                ScrollView{
                    ForEach(Locale.about.description, id: \.self) { item in
                        Text(item)
                            .padding(20)
                            .lineSpacing(5)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }.font(.lightCallout)
                }
                VStack(spacing: 20){
                    Divider()
                    Text(Locale.about.author)
                    Text(Locale.about.copyright)
                }.font(.lightCaption)
                .padding(.bottom, 5)
            }
            .foregroundColor(.black)
            .navigationBarTitle(Locale.title.about, displayMode: .inline)
        }
    }
}
