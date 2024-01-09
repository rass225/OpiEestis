import SwiftUI

struct TwoLayerCapsule: View {
    let color: Color
    let opacity: Double
    
    init(
        color: Color = Theme.Colors.primary,
        opacity: Double = 0.175
    ) {
        self.color = color
        self.opacity = opacity
    }
    
    var body: some View {
        ZStack {
            Capsule(style: .continuous)
                .fill(Color.white)
            Capsule(style: .continuous)
                .fill(color.opacity(opacity).gradient)
        }
    }
}
