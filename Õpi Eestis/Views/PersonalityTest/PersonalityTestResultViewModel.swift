import SwiftUI
import Combine

extension PersonalityTestView.PersonalityTestResultView {
    class Model: ObservableObject {
        @Published private var currentLocale: AppLocale = .english
        
        let result: PersonalityTestResult
        let showFooter: Bool
        let showBackButton: Bool
        private var cancellables = Set<AnyCancellable>()
        
        var acronym: String {
            return result.personalityType.rawValue
        }
        
        var title: String {
            switch currentLocale {
            case .english:
                return result.personalityType.titleEn
            case .estonian:
                return result.personalityType.title
            }
        }
        
        var careers: [String] {
            switch currentLocale {
            case .english:
                return result.personalityType.careersEn
            case .estonian:
                return result.personalityType.careers
            }
        }
        
        var strengths: [String] {
            switch currentLocale {
            case .english:
                return result.personalityType.strengthsEn
            case .estonian:
                return result.personalityType.strengths
            }
        }
        
        var weaknesses: [String] {
            switch currentLocale {
            case .english:
                return result.personalityType.weaknessesEn
            case .estonian:
                return result.personalityType.weaknesses
            }
        }
        
        var description: String {
            switch currentLocale {
            case .english:
                return result.personalityType.descriptionEn
            case .estonian:
                return result.personalityType.description
            }
        }
        
        init(
            result: PersonalityTestResult,
            showFooter: Bool,
            showBackButton: Bool
        ) {
            self.result = result
            self.showFooter = showFooter
            self.showBackButton = showBackButton
            
            DependencyManager.shared.localeManager.$currentLocale
                .sink { [weak self] currentLocale in
                    guard let self else { return }
                    self.currentLocale = currentLocale
                }
                .store(in: &cancellables)
        }
    }
}
