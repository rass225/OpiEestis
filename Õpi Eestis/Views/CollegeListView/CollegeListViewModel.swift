import SwiftUI
import Combine

extension CollegesListView {
    class Model: ObservableObject {
        private let staticColleges: [College]
        
        var currentLocale: AppLocale {
            DependencyManager.shared.localeManager.currentLocale
        }
        
        var colleges: [College] {
            staticColleges.sorted(by: currentLocale == .estonian ? \.name : \.nameEn)
        }
        
        init(colleges: [College]) {
            self.staticColleges = colleges
        }
    }
}
