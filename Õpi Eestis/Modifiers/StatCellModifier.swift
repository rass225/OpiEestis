import SwiftUI

struct statCellModifier: ViewModifier {
    
    var customWidth = (UIScreen.main.bounds.width / 3) + 30
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.black)
            .font(.regularCaption)
            .padding(.horizontal, 8)
    }
}
