import SwiftUI

struct MajorButton: View {
    let image: String
    let label: String
    
    var body: some View {
        ZStack{
            HStack{
                VStack{
                    Image(systemName: image)
                }
                .frame(width: 35)
                .font(Font.title.weight(.light))
                .padding(.trailing, 25)
                Spacer()
                Image(systemName: "chevron.right")
            }
            Text(label)
        }.foregroundColor(Color.white)
        .padding(.horizontal, 25)
    }
}

struct MajorButtonCustomImage: View {
    let image: String
    let label: String
    
    var body: some View {
        ZStack{
            HStack{
                VStack{
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        
                }
                .frame(width: 35)
                .font(Font.title.weight(.light))
                .padding(.trailing, 25)
                Spacer()
                Image(systemName: "chevron.right")
            }
            Text(label)
        }.foregroundColor(Color.white)
        .padding(.horizontal, 25)
    }
}


