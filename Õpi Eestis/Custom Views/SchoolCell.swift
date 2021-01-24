import SwiftUI

struct SchoolCell: View {
    var school: School
    var body: some View {
        VStack(spacing: 0){
            HStack(spacing: 0){
                Image(school.logo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: CustomCellImageSize())
                    .background(Color.white)
                VStack{
                   Text(school.name)
                    .font(Font.callout.weight(.regular))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    Spacer()
                    Text(school.location.city + ", Eesti")
                        .font(Font.caption.weight(.regular))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(Color.black)
                        
                }.padding(.bottom, 5)
                .padding(.top, 20)
                .padding(.leading, 10)
                Spacer()
                Image(systemName: "chevron.right")
                    .padding(.trailing, 10)
            }.frame(height: CustomCellImageSize(), alignment: .leading)
//            .padding(.vertical, 15)
//            .padding(.leading)
        }
        .foregroundColor(Color.white)
        .background(Color.black.opacity(0.3))
    }
}

extension SchoolCell {
    
    func CustomCellImageSize() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        let screenWidth = UIScreen.main.bounds.width
        if screenHeight > 927 {
            customHeight = screenHeight / 18
        }
        else {
            customHeight = screenWidth / 5.5
        }
        return customHeight
    }
}

