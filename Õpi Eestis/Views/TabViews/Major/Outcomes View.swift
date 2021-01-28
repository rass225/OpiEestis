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
                            .font(.lightCallout)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(Color.white)
                            .padding(.vertical, 8)
                    }
                    .lineSpacing(10)
                    .padding(.horizontal, 16)
                }.edgesIgnoringSafeArea(.bottom)
        }.navigationBarTitle(Text("Õpiväljundid"))
    }
}
