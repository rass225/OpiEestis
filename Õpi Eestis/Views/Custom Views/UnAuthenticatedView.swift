import SwiftUI

struct UnauthenticatedView: View {
    let title: String
    let action: () -> ()
    
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 0) {
                VStack(spacing: 24) {
                    Image("estonia2")
                        .resizable()
                        .fit()
                        .setColor(Theme.Colors.primary.gradient)
                        .frame(width: geo.size.width / 1.5)
                    Text("Õpi Eestis")
                        .setFont(.largeTitle, .medium, .rounded)
                }.maxHeight()

                VStack(spacing: 24) {
                    Text(title)
                        .setFont(.body, .regular, .rounded)
                    Button(action: action) {
                        SignInWithAppleButtonViewRepresentable(type: .default, style: .black)
                            .allowsHitTesting(false)
                    }
                    .padding(.horizontal, 32)
                    .frame(height: 55)
                }.maxHeight()
            }
            .maxSize()
        }
    }
}

#Preview {
    UnauthenticatedView(title: "SOS", action: { print("HEY")})
}
