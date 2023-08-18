import Foundation

class DependencyManager {
    static let shared = DependencyManager()
    
    let images: ImageManager
    let firebase: FirebaseManager
    let userDefaults: UserDefaultsManager
    
    init(
        images: ImageManager = .init(),
        firebase: FirebaseManager = .init(),
        userDefaults: UserDefaultsManager = .init()
    ) {
        self.images = images
        self.firebase = firebase
        self.userDefaults = userDefaults
    }
}
