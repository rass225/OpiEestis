import SwiftUI

struct ContactButton: View {
    let image: String
    
    var body: some View {
        ZStack{
            HStack{
                VStack{
                    Image(systemName: image)
                }
                .frame(width: 35)
                .font(Font.title.weight(.light))
            }
        }.foregroundColor(Color.black)
        .padding(.horizontal, 20)
    }
}

struct MajorButtonCustomImage: View {
    let image: String
    let label: String
    
    var body: some View {
        HStack{
            VStack{
                Image(image)
                    .resizable()
                    .scaledToFit()
            }.frame(width: 35)
        }
        .foregroundColor(.white)
        .padding(.horizontal, 15)
    }
}


