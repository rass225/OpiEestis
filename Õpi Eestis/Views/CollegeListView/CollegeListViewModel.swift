import SwiftUI
import Combine

extension CollegesListView {
    class Model: ObservableObject {
        private let staticColleges: [College]
        private var cancellables = Set<AnyCancellable>()
        @Published var currentLocale: AppLocale = .english
        
        var colleges: [College] {
            staticColleges.sorted(by: currentLocale == .estonian ? \.name : \.nameEn)
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
