import SwiftUI

public extension Color {
    static let gradientBackground = LinearGradient(
        gradient: Gradient(colors: [Color.init(red: 20/255, green: 200/255, blue: 175/255), Color.init(red: 20/255, green: 175/255, blue: 255/255)]),
        startPoint: .top,
        endPoint: .bottom
    )
    
    static let customBlue = Color.init(red: 20/255, green: 200/255, blue: 175/255)
    static let customGreen = Color.init(red: 20/255, green: 175/255, blue: 255/255)
}
