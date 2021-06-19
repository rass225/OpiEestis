import SwiftUI

struct SchoolAboutView: View {
    
    let school: School
    let size = SizeObject()
    
    var body: some View {
        ZStack{
            Color.whiteDim1.edgesIgnoringSafeArea(.all)
            VStack(spacing: 0){
                SheetCapsule()
                ScrollView{
                    VStack(spacing: 0) {
                        drawName()
                        drawStats()
                        drawDescription()
                    }
                    
                }
            }
        }
    }
    @ViewBuilder private func drawName() -> some View {
        VStack{
            Text(school.name.rawValue)
                .font(.regularTitle2)
                .foregroundColor(.black)
        }.frame(height: 35)
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding(.vertical, 5)
        .padding(.vertical, 15)
        .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 0)
    }
    @ViewBuilder private func drawStats() -> some View {
        HStack(spacing: 0){
            VStack{
                Image(school.logo)
                    .resizable()
                    .scaledToFit()
                    .frame(height: size.width / 6)
                    .frame(minWidth: 0, maxWidth: size.width / 5)
                    .padding(10)
            }
            .background(Color.white)
            .cornerRadius(6)
            VStack(alignment: .leading, spacing: 0) {
                Text("Vastuvõtt")
                    .font(.boldBody)
                    .padding(.vertical, 5)
                VStack(alignment: .leading){
                    ForEach(school.vastuvõtt, id: \.self) { item in
                        Text(item)
                    }.font(.regularCaption)
                }
                Spacer()
            }.frame(height: size.width / 6, alignment: .leading)
            .padding(.vertical, 10)
            .padding(.leading, 15)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)
            .background(Color.white)
            .cornerRadius(6)
            .padding(.leading, 8)
        }.padding(.horizontal)
        .padding(.top, 8)
        .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 0)
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
                }.padding(.horizontal, 10)
                .padding(.vertical, 10)
                .background(Color.white)
                .cornerRadius(6)
                .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 0)
                .padding(.horizontal)
                .padding(.top, 8)
            }
        }//.padding(.top, 25)
    }
}
