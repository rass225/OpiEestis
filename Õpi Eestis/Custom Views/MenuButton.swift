import SwiftUI

struct MenuButton: View {
    var image: String
    var body: some View {
        VStack{
            Image(systemName: image)
                .resizable()
                .font(Font.title.weight(.light))
                .frame(width: customBigButton2(), height: customBigButton())
        }.frame(width: customBigButton3(), height: customBigButton3())
        .background(Color.white)
        .overlay(
                RoundedRectangle(cornerRadius: customBigButton3())
                    .stroke(Color.customBlue, lineWidth: 2)
            )
        .padding(4)
        .background(Color.white)
        .cornerRadius(customBigButton3())
        .padding(.trailing, 35)
        .shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 0)
    
        .foregroundColor(Color.black)
        
    }
}

extension MenuButton {
    func customBigButton() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        let screenWidth = UIScreen.main.bounds.width
        if screenHeight > 900 {
            customHeight = screenWidth / 18.8
        } else {
            customHeight = screenWidth / 13.8
        }
        
        
        return customHeight
    }
    
    func customBigButton2() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        let screenWidth = UIScreen.main.bounds.width
        if screenHeight > 900 {
            customHeight = screenWidth / 15.8
        } else {
            customHeight = screenWidth / 11.8
        }
        
        
        return customHeight
    }
    
    func customBigButton3() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        let screenWidth = UIScreen.main.bounds.width
        if screenHeight > 900 {
            customHeight = screenWidth / 9
        } else {
            customHeight = screenWidth / 7
        }
        
        
        return customHeight
    }
}
