import Foundation

class DependencyManager {
    static let shared = DependencyManager()
    
    let images: ImageManager
    let firebase: FirebaseManager
    let userDefaults: UserDefaultsManager
    let network: NetworkManager
    
    init(
        images: ImageManager = .init(),
        firebase: FirebaseManager = .init(),
        userDefaults: UserDefaultsManager = .init(),
        networkManager: NetworkManager = .init()
    ) {
        self.images = images
        self.firebase = firebase
        self.userDefaults = userDefaults
        self.network = networkManager
    }
}
