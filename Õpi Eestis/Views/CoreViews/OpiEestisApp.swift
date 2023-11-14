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
    @StateObject private var model: ContentView.Model = .init()
    @StateObject private var appState = AppState()
    @StateObject private var localizationManager = LocalizationManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
                .environmentObject(appState)
                .environmentObject(localizationManager)
                .environment(\.locale, .init(identifier: localizationManager.currentLocale.identifier))
                .statusBarHidden()
        }
    }
}
