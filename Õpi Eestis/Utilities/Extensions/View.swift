import Foundation
import SwiftUI

extension View {
    
    func keyboardResponsive() -> ModifiedContent<Self, KeyboardResponsiveModifier> {
        return modifier(KeyboardResponsiveModifier())
    }
    
    func ignoreEdges(edge: Edge.Set) -> some View {
        return self
            .edgesIgnoringSafeArea(edge)
    }
    
    func defaultShadow(color: Color, radius: CGFloat) -> some View {
        return self
            .shadow(color: color, radius: radius, x: 0.0, y: 0.0)
    }
    
    func cornerRadiusCustom(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
        
        
    }
}





