import SwiftUI

struct PersonalityTestView: View {
    @Namespace var animation
    @StateObject var model: Model = .init()
    
    var body: some View {
        VStack {
            switch model.viewState {
            case .start:
                StartView(action: model.startTest)
            case .test:
                testView()
            case .processing:
                processingView()
            case .result:
                resultView()
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(model.toolbarVisibility, for: .navigationBar)
        .toolbar {
            ToolbarItem(placement: .principal, content: AppPrincipal.init)
            ToolbarItem(placement: .navigationBarLeading, content: backButton)
        }
    }
}

extension PersonalityTestView {
    @ViewBuilder
    func testView() -> some View {
        PersonalityTestQuestionsView(model: model)
    }
    
    @ViewBuilder
    func processingView() -> some View {
        PathFinderView.ProcessingView(
            duration: 5.0,
            completion: model.processComplete
        )
    }
    
    @ViewBuilder
    func resultView() -> some View {
        if let personalityType = model.result {
            PersonalityTestResultView(personalityType: personalityType)
        }
    }
    
    @ViewBuilder
    func backButton() -> some View {
        if model.backButtonVisible {
            BackButton(color: Theme.Colors.primary)
        }
    }
}
