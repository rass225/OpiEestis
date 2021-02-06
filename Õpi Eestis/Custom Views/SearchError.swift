import SwiftUI

struct SearchError: View {
    let size = SizeObject()
    let errorMessage = "Viga otsingul"
    var body: some View {
        Spacer()
        Text(errorMessage)
            .padding(.bottom, 40)
            .font(.system(size: size.width / 20, weight: .medium))
            .foregroundColor(.white)
        Spacer()
    }
}
