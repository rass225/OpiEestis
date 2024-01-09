import SwiftUI
import Combine

extension CollegesListView {
    class Model: ObservableObject {
        private let staticColleges: [College]
        private var cancellables = Set<AnyCancellable>()
        @Published private(set) var currentLocale: AppLocale = .english
        
        var colleges: [College] {
            switch currentLocale {
            case .english:
                staticColleges.sorted(by: \.nameEn)
            case .estonian:
                staticColleges.sorted(by: \.name)
            }
        }
        
        init(colleges: [College]) {
            self.staticColleges = colleges
            
            DependencyManager.shared.localeManager.$currentLocale
                .sink { [weak self] currentLocale in
                    guard let self else { return }
                    self.currentLocale = currentLocale
                }
                .store(in: &cancellables)   
        }
    }
}
