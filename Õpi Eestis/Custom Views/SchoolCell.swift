import SwiftUI

struct SchoolCell: View {
    let school: School
    let index: Int
    let colors1 = Gradient(colors: [Color.white, Color.white])
    let colors2 = Gradient(colors: [Color.white, Color.whiteDim2])
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                HStack(spacing: 0){
                    Image(school.logo)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: CustomCellImageSize())
                        .padding(2)
                        .padding(.leading, 5)
                    VStack{
                       Text(school.name)
                        .font(.regularBody)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        Spacer()
                        Text(school.location.city + ", Eesti")
                            .font(.regularCaption)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(Color.black)
                            
                    }.padding(.bottom, 10)
                    .padding(.top, 20)
                    .padding(.leading, 10)
                    Spacer()
                    Image.chevronRight
                        .padding(.trailing, 10)
                }.frame(height: CustomCellImageSize(), alignment: .leading)
            }
            .foregroundColor(Color.black)
//            .background()
            .background(LinearGradient(gradient: index % 2 == 0 ? colors1 : colors2, startPoint: .center, endPoint: .trailing))
            .cornerRadiusCustom(100, corners: .bottomRight)
        }
        .background(index % 2 == 0 ? Color.whiteDim2 : Color.white)
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

