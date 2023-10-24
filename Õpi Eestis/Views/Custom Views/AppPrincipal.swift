import SwiftUI

struct AppPrincipal: View {
    var body: some View {
        HStack {
            Image("estonia2")
                .resizable()
                .fit()
                .frame(height: 22)
                .setColor(Theme.Colors.primary)
            Text("Õpi Eestis")
                .setFont(.title3, .semibold, .rounded)
        }
    }
}
