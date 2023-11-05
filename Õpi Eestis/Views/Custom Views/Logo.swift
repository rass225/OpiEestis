import SwiftUI

struct Logo: View {
    var body : some View {
        HStack{
            Theme.Icons.appLogo2
                .resizable()
                .scaledToFit()
                .frame(width: 35, height: 35)
                .setColor(Theme.Colors.primary)
            Text(Theme.Locale.App.name)
                .setFont(.title3, .semibold, .rounded)
        }
    }
}
