import Foundation
import SwiftUI

extension View {
    
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
    
    func miniShadow() -> some View {
        self
            .shadow(color: Color.black.opacity(0.09), radius: 1, x: 0, y: 2)
    }
    
    func defaultShadow() -> some View {
        self
            .shadow(color: Color.black.opacity(0.3), radius: 4, x: 0, y: 2)
    }
}





