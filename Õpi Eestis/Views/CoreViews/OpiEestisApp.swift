import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        return true
    }
}


@main
struct OpiEestisApp: App {
    @StateObject var theme: Theme = Theme()
    init(){
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .red
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont.systemFont(ofSize: customTitleFont(), weight: UIFont.Weight.regular), .foregroundColor : UIColor.black.withAlphaComponent(1)]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.black.withAlphaComponent(1)]
        UINavigationBar.appearance().tintColor = UIColor.black.withAlphaComponent(1)
        UITableView.appearance().separatorStyle = .none
        
    }
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            SchoolListView().environmentObject(theme)
        }
    }
    
    func customTitleFont() -> CGFloat {
        var customSize: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        let screenWidth = UIScreen.main.bounds.width
        if screenHeight > 927 {
            customSize = screenWidth / 32
        } else {
            customSize = screenWidth / 24
        }
        return customSize
    }
}
