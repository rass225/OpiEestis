import SwiftUI

@main
struct OpiEestisApp: App {
    
    init(){
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .red
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont.systemFont(ofSize: customTitleFont(), weight: UIFont.Weight.regular), .foregroundColor : UIColor.white.withAlphaComponent(1)]
        UINavigationBar.appearance().tintColor = UIColor.white.withAlphaComponent(1)
        UINavigationBar.appearance().barStyle = .black
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
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



//        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: UIBarMetrics.default)
//        UINavigationBar.appearance().shadowImage = UIImage()
//        UINavigationBar.appearance().isTranslucent = true

//        UINavigationBar.appearance().backgroundColor = UIColor.init(red: 20/255, green: 100/255, blue: 100/255, alpha: 1)
