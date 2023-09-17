import SwiftUI

struct BackButton: View {
    @Environment(\.dismiss) private var dismiss
    let color: Color
    
    var body: some View {
        Button(action: dismiss.callAsFunction) {
            Theme.Icons.chevronLeft
                .setFont(.callout, .bold, .rounded)
                .setColor(color.gradient)
                .padding(.leading, 8)
        }
    }
}
