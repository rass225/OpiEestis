import SwiftUI

struct AppPrincipal: View {
    @ObservedObject private var localeManager = DependencyManager.shared.localeManager
    @EnvironmentObject var appState: AppState

    private var appName: String {
        switch localeManager.currentLocale {
        case .english:
            return appState.appInformation.name.en
        case .estonian:
            return appState.appInformation.name.et
        }
    }
    
    var body: some View {
        HStack {
            Theme.Icons.appIcon
                .resizable()
                .fit()
                .frame(height: 22)
                .setColor(Theme.Colors.primary.gradient)
            Text(appName)
                .setFont(.title3, .semibold, .rounded)
        }
    }
}
