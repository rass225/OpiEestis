import SwiftUI

struct statCellModifier: ViewModifier {
    
    var customWidth = (UIScreen.main.bounds.width / 3) + 30
    
    func body(content: Content) -> some View {
        content
            .padding(.leading, 10)
            .frame(maxWidth: .infinity)
            .foregroundColor(Color.white)
//            .background(Color.yellow)
//            .cornerRadius(10)
//            
//            .overlay(
//                RoundedRectangle(cornerRadius: 10)
//                    .stroke(Color.black.opacity(0.05), lineWidth: 3)
////                    .shadow(color: Color.black.opacity(0.2), radius: 3, x: 3, y: 3)
////                    .clipShape(RoundedRectangle(cornerRadius: 10))
//                    .shadow(color: Color.black.opacity(0.2), radius: 3, x: 3, y: 3)
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
//                    .shadow(color: Color.white.opacity(0.2), radius: 4, x: -4, y: -4)
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
//            )
            .padding(.horizontal, 8)
    }
}
