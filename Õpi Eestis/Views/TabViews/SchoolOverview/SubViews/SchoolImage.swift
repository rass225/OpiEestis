import SwiftUI

struct SchoolImage: View {
    
    let school: School
    let size = SizeObject()
    
    var body: some View {
        ZStack{
            Image(school.image)
                .resizable()
                .overlay(drawOverlay(school: school), alignment: .bottomTrailing)
        }.frame(width: size.width, height: size.thirdHeight)
        .cornerRadiusCustom(90, corners: .bottomLeft)
    }
    
    @ViewBuilder private func drawOverlay(school: School) -> some View {
        VStack(alignment: .trailing, spacing: 10){
            Text(school.name)
                .defaultShadow(color: .black, radius: 5)
                .font(.mediumTitle2)
            HStack{
                Image.locationFill
                Text(school.location.city).font(.regularBody)
            }.defaultShadow(color: .black, radius: 5)
        }
        .defaultShadow(color: .black, radius: 15)
        .foregroundColor(.white)
        .padding(.bottom, 20)
        .padding(.trailing, 20)
        
    }
}
