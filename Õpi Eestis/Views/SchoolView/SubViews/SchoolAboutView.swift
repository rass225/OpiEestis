import SwiftUI

struct SchoolAboutView: View {
    @EnvironmentObject var theme : Theme
    let school: School
    
    var body: some View {
        ZStack{
            Color.whiteDim1.edgesIgnoringSafeArea(.bottom)
            VStack(spacing: 0){
                drawName()
                ScrollView{
                    VStack(spacing: 0) {
                        
//                        drawStats()
                        drawDescription()
                    }
                }
            }.padding(.top, -30)
        }
    }
    @ViewBuilder private func drawName() -> some View {
        VStack(alignment: .leading, spacing: 0){
            HStack(spacing: 5){
                Image(school.logo.rawValue)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 110, height: 100, alignment: .center)
                VStack(alignment: .leading, spacing: 0) {
                    Text(Locale.admission)
                        .font(.semiBoldTitle2)
                        .padding(.vertical, 5)
                    VStack(alignment: .leading){
                        ForEach(school.vastuvõtt, id: \.self) { item in
                            Text(item)
                        }.font(.semiBoldCaption)
                    }
                }
            }
                
        }.frame(maxWidth: .infinity, alignment: .leading)
        .padding([.horizontal, .bottom], 25)
        .background(Color.white)
        .cornerRadiusCustom(50, corners: [.bottomLeft, .bottomRight])
        .miniShadow()
        .padding(.bottom, 10)
        
    }
    @ViewBuilder private func drawStats() -> some View {
        HStack(spacing: 0){
//            VStack{
//                Image(school.logo.rawValue)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(height: Size.sixthWidth)
//                    .frame(minWidth: 0, maxWidth: Size.sixthWidth)
//                    .padding(10)
//            }
//            .background(Color.white)
//            .cornerRadius(6)
            VStack(alignment: .leading, spacing: 0) {
                Text(Locale.admission)
                    .font(.boldBody)
                    .padding(.vertical, 5)
                VStack(alignment: .leading){
                    ForEach(school.vastuvõtt, id: \.self) { item in
                        Text(item)
                    }.font(.regularCaption)
                }
                
            }
            .frame(height: Size.sixthWidth, alignment: .leading)
            .padding(.vertical, 10)
            .padding(.leading, 15)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
            .background(Color.white)
            .cornerRadius(6)
            .padding(.leading, 8)
        }.padding(.horizontal)
        .padding(.top, 8)
        .miniShadow()
    }
    
    @ViewBuilder private func drawDescription() -> some View {
        VStack(spacing: 0){
            ForEach(school.description, id: \.self) { item in
                VStack{
                    Text(item)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.black)
                        .font(.regularCallout)
                        .lineSpacing(5)
                }.padding(10)
                .background(Color.white)
                .cornerRadius(6)
                .miniShadow()
                .padding(.horizontal)
                .padding(.top, 8)
            }
        }//.padding(.top, 25)
    }
}
