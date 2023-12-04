import Foundation

class DependencyManager {
    static let shared = DependencyManager()
 
    let userDefaults: UserDefaultsManager
    let network: NetworkManager
    let mapService: MapServiceManager
    let localeManager: LocalizationManager
    
    init(
        userDefaults: UserDefaultsManager = .init(),
        networkManager: NetworkManager = .init(),
        mapService: MapServiceManager = .init(),
        localeManager: LocalizationManager = .shared
    ) {
        self.userDefaults = userDefaults
        self.network = networkManager
        self.mapService = mapService
        self.localeManager = localeManager
    }
}
