import Foundation

class DependencyManager {
    static let shared = DependencyManager()
 
    let userDefaults: UserDefaultsManager
    let network: NetworkManager
    let mapService: MapServiceManager
    
    init(
        userDefaults: UserDefaultsManager = .init(),
        networkManager: NetworkManager = .init(),
        mapService: MapServiceManager = .init()
    ) {
        self.userDefaults = userDefaults
        self.network = networkManager
        self.mapService = mapService
    }
}
