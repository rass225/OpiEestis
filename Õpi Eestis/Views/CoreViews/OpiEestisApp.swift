import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        return true
    }
}

@main
struct OpiEestisApp: App {
    
    @ObservedObject var appState = AppState()
      
    init(){
        segmentControlAppearance()
    }
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appState)
//                .statusBar(hidden: true)
                
        }
    }
    
    func segmentControlAppearance() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.init(red: 0, green: 118/255, blue: 200/255, alpha: 1)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor : UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor : UIColor.black], for: .normal)
        UISegmentedControl.appearance().setTitleTextAttributes([.font : UIFont.preferredFont(forTextStyle: .subheadline)], for: .normal)
    }
    
    func customTitleFont() -> CGFloat {
        var customSize: CGFloat = 0
        let screenHeight = OEAppearance.Size.height
        let screenWidth = OEAppearance.Size.width
        if screenHeight > 927 {
            customSize = screenWidth / 32
        } else {
            customSize = screenWidth / 24
        }
        return customSize
    }
}
