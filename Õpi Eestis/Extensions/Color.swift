import SwiftUI

public extension Color {
    static let gradientBackground = LinearGradient(
        gradient: Gradient(colors: [Color.init(red: 20/255, green: 200/255, blue: 175/255), Color.init(red: 20/255, green: 175/255, blue: 255/255)]),
        startPoint: .top,
        endPoint: .bottom
    )
    
    static let customBlue = Color.init(red: 20/255, green: 200/255, blue: 175/255)
    static let customGreen = Color.init(red: 20/255, green: 175/255, blue: 255/255)
    static let whiteDim = Color.init(red: 247/255, green: 247/255, blue: 247/255)
    static let whiteDim1 = Color.init(red: 240/255, green: 240/255, blue: 240/255)
    static let whiteDim2 = Color.init(red: 232/255, green: 232/255, blue: 232/255)
}
