import SwiftUI

extension TestsListView {
    class Model: ObservableObject {
        let colleges: [College]
        @Published var isLoginSuggestionPresented: Bool
        
        init(
            colleges: [College],
            isLoginSuggestionPresented: Bool = false
        ) {
            self.colleges = colleges
            self.isLoginSuggestionPresented = isLoginSuggestionPresented
        }
        
        func closeLoginView() {
            isLoginSuggestionPresented = false
        }
        
        func openLoginView() {
            isLoginSuggestionPresented = true
        }
    }
}
