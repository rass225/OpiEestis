import SwiftUI

struct Description_View: View {
    var passedMajor: majorsMinors
    var body: some View {
        ZStack{
            Color.customBlue.edgesIgnoringSafeArea(.all)
            Color.black.opacity(0.5).edgesIgnoringSafeArea(.bottom)
            ScrollView{
                ForEach(passedMajor.description, id: \.self) { hey in
                    Text(hey)
                        .font(.lightCallout)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 8)
                    
                }.lineSpacing(10)
                .padding(.horizontal, 16)
            }
        }.navigationBarTitle(Text("Eriala kirjeldus"), displayMode: .inline)
    }
}

