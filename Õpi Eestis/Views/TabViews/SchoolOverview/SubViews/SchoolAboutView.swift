import SwiftUI

struct SchoolAboutView: View {
    
    let school: School
    
    var body: some View {
        ZStack{
            WhiteBackground()
            VStack(spacing: 0){
                SheetCapsule()
                ScrollView{
                    LabelledDivider(label: school.logo, color: Color.white)
                        .padding(.top, 10)
                        .padding(.horizontal, 16)
                    if !school.vastuvõtt.isEmpty {
                        drawStats()
                    }
                    drawDescription()
                }
            }
        }
    }
    
    @ViewBuilder private func drawStats() -> some View {
        VStack{
            Text("Vastuvõtt").font(.boldCallout)
            HStack{
                ForEach(school.vastuvõtt, id: \.self) { item in
                    Text(item)
                }.font(.regularCaption)
            }
        }
    }
    
    @ViewBuilder private func drawDescription() -> some View {
        VStack{
            ForEach(school.description, id: \.self) { item in
                Text(item)
                    .font(.lightCallout)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
                    .lineSpacing(5)
            }
        }.padding(.horizontal, 16)
        .padding(.top, 20)
    }
}
