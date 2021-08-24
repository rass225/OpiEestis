import SwiftUI

extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .leading, endPoint: .trailing)
    }
    
    static let dimToWhiteGradient = LinearGradient(gradient: Gradient(colors: [Color.whiteDim, Color.white]), startPoint: .center, endPoint: .bottom)
}
