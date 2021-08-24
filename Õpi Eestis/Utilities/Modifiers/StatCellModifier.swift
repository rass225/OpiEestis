import SwiftUI

struct statCellModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.black.opacity(0.5))
            .font(.regularCaption)
            .padding(.leading, 5)
    }
}


