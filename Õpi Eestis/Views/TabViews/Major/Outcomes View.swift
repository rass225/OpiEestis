import SwiftUI

struct Outcomes_View: View {
    var passedMajor: majorsMinors
        var body: some View {
            ZStack{
                Color.customBlue.edgesIgnoringSafeArea(.all)
                Color.black.opacity(0.5).edgesIgnoringSafeArea(.bottom)
                ScrollView{
                    ForEach(passedMajor.outcomes, id: \.self) { hey in
                        Text("\u{2022} \(hey)")
                            .font(Font.callout.weight(.light))
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(Color.white.opacity(1))
                            .padding(.vertical, 8)
                    }
                    .lineSpacing(10)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: .infinity)
                }.padding(.bottom, 1)
                .edgesIgnoringSafeArea(.bottom)
        }.navigationBarTitle(Text("Õpiväljundid"))
    }
}
