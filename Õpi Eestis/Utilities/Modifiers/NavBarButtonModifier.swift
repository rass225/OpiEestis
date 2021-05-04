
import SwiftUI

struct NavBarButtonModifier: ViewModifier {
    let font: Font
    let edge: Edge.Set
    let padding: CGFloat
    let radius1: CGFloat
    let radius2: CGFloat
    
    func body(content: Content) -> some View {
        content
            .font(font)
            .defaultShadow(color: .black, radius: radius1)
            .defaultShadow(color: .black, radius: radius2)
            .foregroundColor(.white)
            .padding(edge, padding)
    }
}

