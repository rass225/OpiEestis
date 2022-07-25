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
        navigationBarAppearance()
        tableViewAppearance()
        segmentControlAppearance()
    }
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appState)
                .statusBar(hidden: true)
                
        }
    }
    
    func navigationBarAppearance() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithDefaultBackground()
        navBarAppearance.backgroundColor = .white.withAlphaComponent(1)
        navBarAppearance.shadowColor = .clear
        navBarAppearance.shadowImage = UIImage()
        navBarAppearance.titleTextAttributes = [.font : UIFont.systemFont(ofSize: customTitleFont(), weight: UIFont.Weight.regular), .foregroundColor : UIColor.black.withAlphaComponent(1)]
        let buttonAppearance = UIBarButtonItemAppearance(style: .plain )
        buttonAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.black]
        navBarAppearance.buttonAppearance = buttonAppearance
        
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
      UINavigationBar.appearance().tintColor = UIColor.black
    }
    
    func tableViewAppearance() {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .white
        UITableView.appearance().separatorStyle = .none
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
