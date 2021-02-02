import SwiftUI

struct SchoolImage: View {
    
    let school: School
    
    var body: some View {
        ZStack{
            Image(school.image)
                .resizable()
                .overlay(SchoolNameOverlay(school: school), alignment: .bottomTrailing)
//                .overlay(SchoolAboutOverlay(school: school), alignment: .topTrailing)
                
        }.frame(height: UIScreen.main.bounds.height / 3)
        .frame(width: UIScreen.main.bounds.width)
        .cornerRadiusCustom(90, corners: .bottomLeft)
    }
}

struct SchoolNameOverlay: View {
    
    let school: School
    var body: some View {
        VStack(alignment: .trailing, spacing: 10){
            Text(school.name)
                .font(Font.title2.weight(.medium))
                .shadow(color: Color.black, radius: 5, x: 0, y: 0)
            HStack{
                Image(systemName: .locationFill)
                Text(school.location.city)
                    .font(.regularBody)
            }.shadow(color: Color.black, radius: 5, x: 0, y: 0)
            
        }.shadow(color: Color.black, radius: 15, x: 0, y: 0)
        .foregroundColor(Color.white)
        .padding(.bottom, 20)
        .padding(.trailing, 20)
        
    }
}

struct SchoolAboutOverlay: View {
    let school: School
    
    var body: some View {
        HStack{
            Image.infoCircle
            Text("More info")
        }.foregroundColor(Color.white)
    }
}
