import SwiftUI

struct Description_View: View {
    var major: majorsMinors
    var body: some View {
        ZStack{
            WhiteBackground()
            ScrollView{
                ForEach(major.description, id: \.self) { hey in
                    Text(hey)
                        .font(.lightCallout)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.black)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 8)
                    
                }.lineSpacing(5)
                .padding(.horizontal, 16)
            }
        }.navigationBarTitle(Text("Eriala kirjeldus"), displayMode: .automatic)
    }
}

