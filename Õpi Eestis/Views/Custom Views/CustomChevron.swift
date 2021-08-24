import SwiftUI

struct CustomChevron: View {
    let color: Color
    var body: some View {
        Image.chevronRight
            .foregroundColor(color)
            .font(.regularTitle3)
            .padding(.trailing, 5)
    }
}

