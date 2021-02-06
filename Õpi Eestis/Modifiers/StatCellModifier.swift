import SwiftUI

struct statCellModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.black)
            .font(.regularCaption)
            .padding(.horizontal, 8)
    }
}
