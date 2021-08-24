import SwiftUI

struct SchoolImage: View {
    
    let school: School
    
    var body: some View {
        ZStack{
            Image(school.image.rawValue)
                .resizable()
                .overlay(drawOverlay(name: school.name.rawValue, city: school.location.city.rawValue), alignment: .bottomTrailing)
        }
        .frame(width: Size.width, height: Size.thirdHeight)
        .cornerRadiusCustom(90, corners: .bottomLeft)
        .padding(.bottom, 10)
        .background(Color.white)
    }
}

private struct drawOverlay: View {
    let name: String
    let city: String
    var body : some View {
        VStack(alignment: .trailing, spacing: 10){
            Text(name)
                .defaultShadow(color: .black, radius: 5)
                .font(.mediumTitle2)
            HStack(spacing: 2){
                Image.locationFill
                    .font(.regularTitle3)
                Text(city).font(.semiBoldBody)
            }.defaultShadow(color: .black, radius: 5)
        }
        .foregroundColor(.white)
        .padding(.bottom, 25)
        .padding(.trailing, 20)
    }
}
