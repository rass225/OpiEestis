import Foundation

struct AppInformation: Codable {
    let contact: AppContact
    let description: AppDescription
    let name: AppName
    let version: Double
    
    static let initial: AppInformation = .init(
        contact: .initial,
        description: .initial,
        name: .initial,
        version: 0
    )
}

extension AppInformation {
    struct AppContact: Codable {
        let email: String
        
        static let initial: AppContact = .init(email: "")
    }
    
    struct AppDescription: Codable {
        let et: String
        let en: String
        
        static let initial: AppDescription = .init(et: "", en: "")
    }
    
    struct AppName: Codable {
        let et: String
        let en: String
        
        static let initial: AppName = .init(et: "Õpi Eestis", en: "Õpi Eestis")
    }
}
