import Foundation

class DependencyManager {
    static let shared = DependencyManager()
    
    let images: ImageManager
    let firebase: FirebaseManager
    
    init(
        images: ImageManager = .init(),
        firebase: FirebaseManager = .init()
    ) {
        self.images = images
        self.firebase = firebase
    }
}
