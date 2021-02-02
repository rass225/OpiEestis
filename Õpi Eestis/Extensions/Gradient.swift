import SwiftUI

public extension Gradient {
    static let gradientColors = Gradient(colors: [.customBlue, .customGreen])
    static let whiteToDim = Gradient(colors: [Color.white, Color.whiteDim1])
    static let dimToWhite = Gradient(colors: [Color.whiteDim1, Color.white])
}


public extension LinearGradient {
    static let dimToWhiteGradient = LinearGradient(gradient: .dimToWhite, startPoint: .center, endPoint: .bottom)
}
