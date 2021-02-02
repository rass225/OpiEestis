import SwiftUI

struct SheetCapsule: View {
    var body: some View {
        Capsule()
            .frame(width: 60, height: 5)
            .padding(.vertical, 5)
            .foregroundColor(Color.black.opacity(0.5))
    }
}
