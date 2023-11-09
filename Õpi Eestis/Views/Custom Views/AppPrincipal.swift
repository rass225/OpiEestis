import SwiftUI

struct AppPrincipal: View {
    var body: some View {
        HStack {
            Theme.Icons.appIcon
                .resizable()
                .fit()
                .frame(height: 22)
                .setColor(Theme.Colors.primary)
            Text(Theme.Locale.App.name)
                .setFont(.title3, .semibold, .rounded)
        }
    }
}
