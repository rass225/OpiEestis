import SwiftUI

struct PersonalityTestView: View {
    @EnvironmentObject var appState: AppState
    @Namespace var animation
    @StateObject var model: Model
    
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
            ToolbarItem(placement: .topBarLeading, content: backButton)
            ToolbarItem(placement: .topBarTrailing, content: historyButton)
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
        if let result = model.result {
            PersonalityTestResultView(model: .init(
                result: result,
                showFooter: true,
                showBackButton: false
            ))
        }
    }
    
    @ViewBuilder
    func backButton() -> some View {
        if model.backButtonVisible {
            BackButton(color: Theme.Colors.primary)
        }
    }
    
    @ViewBuilder
    func historyButton() -> some View {
        if model.historyButtonVisible {
            Image(systemName: "clock.arrow.circlepath")
                .setFont(.callout, .bold, .rounded)
                .setColor(Theme.Colors.primary.gradient)
                .padding(.horizontal, 8)
                .padding(.vertical, 8)
                .contentShape(.rect)
                .onTapGesture {
                    appState.route(to: .personalityTestHistory)
                }
        }
    }
}
