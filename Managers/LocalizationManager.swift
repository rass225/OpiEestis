import Foundation

class LocalizationManager: ObservableObject {
    @Published var currentLocale: AppLocale {
        didSet {
            UserDefaults.standard.set(currentLocale.rawValue, forKey: "selectedLocale")
        }
    }
    
    init() {
        let savedLocaleIdentifier = UserDefaults.standard.string(forKey: "selectedLocale") ?? AppLocale.english.rawValue
        self.currentLocale = AppLocale.locale(from: savedLocaleIdentifier)
    }
    
    func setLocale(_ locale: AppLocale) {
        currentLocale = locale
    }
}

enum AppLocale: String, CaseIterable {
    case english = "en"
    case estonian = "et-EE"

    var identifier: String {
        switch self {
        case .english:
            return "en"
        case .estonian:
            return "et-EE"
        }
    }
    
    var label: String {
        switch self {
        case .english:
            return "English"
        case .estonian:
            return "Estonian"
        }
    }

    static func locale(from identifier: String) -> AppLocale {
        return AppLocale(rawValue: identifier) ?? .english
    }
}
