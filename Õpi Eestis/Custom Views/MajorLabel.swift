import SwiftUI

struct MajorLabel: View {
    var text: String
    var body: some View {
        Text(text)
            //.padding(30)
            .frame(width: self.CustomWidth(), height: self.CustomHeight())
            .contentShape(RoundedRectangle(cornerRadius: self.customCornerRadiusFunc()))
            .foregroundColor(Color.black)
            .background(
                DarkBackground2(shape: RoundedRectangle(cornerRadius: self.customCornerRadiusFunc()))
            )
           // .compositingGroup()
           // .opacity(configuration.isPressed ? 0.5 : 1.0)
           // .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
    }
}

extension MajorLabel {
    func CustomWidth() -> CGFloat {
        var customWidth: CGFloat = 0
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        if screenHeight > 900 {
            customWidth = screenWidth / 2
        } else {
            customWidth = screenWidth / 1.5
        }
        
        return customWidth
    }
    func CustomHeight() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        if screenHeight > 900 {
            customHeight = screenWidth / 15
        } else {
            customHeight = screenWidth / 9
        }
        
        return customHeight
    }
    func customCornerRadiusFunc() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        let screenWidth = UIScreen.main.bounds.width
        if screenHeight > 900 {
            customHeight = (screenWidth / 4) / 12
        } else {
            customHeight = (screenWidth / 4) / 8
        }
        return customHeight
    }
}
