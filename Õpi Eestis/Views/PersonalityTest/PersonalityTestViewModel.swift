import SwiftUI

extension PersonalityTestView {
    class Model: ObservableObject {
        @Published private(set) var viewState: ViewState = .start
    }
}

// MARK: Public methods

extension PersonalityTestView.Model {
    func startTest() {
        withAnimation(.default) {
            viewState = .test
        }
    }
    
    func startProccessing() {
        
    }
    
    func showResults() {
        
    }
}

// MARK: - Objects

extension PersonalityTestView.Model {
    enum ViewState {
        case start
        case test
        case processing
        case result
    }
}
