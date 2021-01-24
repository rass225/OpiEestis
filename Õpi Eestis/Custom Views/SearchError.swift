import SwiftUI

struct SearchError: View {
    var errorMessage = "Viga otsingul"
    var body: some View {
        Spacer()
        Text(errorMessage)
            .padding(.bottom, 40)
            .font(.system(size: UIScreen.main.bounds.width / 20, weight: .medium))
            .foregroundColor(Color.white)
        Spacer()
    }
}
