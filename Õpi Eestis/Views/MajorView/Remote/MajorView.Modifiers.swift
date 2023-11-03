import SwiftUI

// MARK: - Modifiers

extension MajorView {
    struct ContactButtonModifier: ViewModifier {
        let color: Color
        let font: Font
        
        init(
            color: Color,
            font: Font = .body
        ) {
            self.color = color
            self.font = font
        }
        func body(content: Content) -> some View {
            content
                .setFont(font, .regular, .rounded)
                .setColor(color.gradient)
                .padding(10)
                .background(
                    Circle()
                        .fill(color.opacity(0.175))
                )
        }
    }
}
