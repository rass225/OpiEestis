import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct OpiEestisApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @StateObject private var appState = AppState()
    @StateObject private var localeManager = DependencyManager.shared.localeManager
//    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appState)
                .environment(\.locale, .init(identifier: localeManager.currentLocale.identifier))
                .statusBarHidden()
                .sheet(item: $appState.pendingUser) { user in
                    UserSetupView(model: .init(user: user))
                        .environmentObject(appState)
                }
        }
    }
}
