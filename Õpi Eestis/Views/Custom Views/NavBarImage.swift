import SwiftUI

struct navBarImage: View {
    let image: Image
    let color: Color
    var body: some View {
        image
            .frame(height: 35)
            .frame(width: 35)
            .font(.regularBody)
            .background(color)
            .cornerRadius(35)
            .foregroundColor(Color.white)
    }
}
