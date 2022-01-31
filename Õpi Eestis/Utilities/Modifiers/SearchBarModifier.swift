import SwiftUI

struct SearchBarModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(height: 38)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .background(Color.white)
    }
}

