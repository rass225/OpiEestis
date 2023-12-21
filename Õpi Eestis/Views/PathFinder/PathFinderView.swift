import SwiftUI

struct PathFinderView: View {
    @EnvironmentObject var appState: AppState
    @StateObject var model: Model
    
    var body: some View {
        VStack {
            switch model.viewState {
            case .start:
                startView()
            case .setup:
                setupView()
            case .test:
                testView()
            case .proccessing:
                proccessingView()
            case .result:
                resultView()
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(model.toolbarVisibility, for: .navigationBar)
        .toolbar {
            ToolbarItem(placement: .principal, content: AppPrincipal.init)
            if model.backButtonVisible {
                ToolbarItem(placement: .navigationBarLeading, content: backButton)
            }
        }
    }
}

extension PathFinderView {
    @ViewBuilder
    func startView() -> some View {
        StartView(action: model.start)
    }
    
    @ViewBuilder
    func setupView() -> some View {
        PathFinderSetupView(
            completion: model.setup,
            currentEducation: $model.currentEducation,
            isSpeakingEstonian: $model.isSpeakingEstonian,
            isSpeakingEnglish: $model.isSpeakingEnglish
        )
    }
    
    @ViewBuilder
    func testView() -> some View {
        PathFinderQuestionsView(model: model)
    }
    
    @ViewBuilder
    func proccessingView() -> some View {
        ProcessingView(completion: model.processComplete)
    }
    
    @ViewBuilder
    func resultView() -> some View {
        ResultView(model: .init(
            colleges: model.colleges,
            userCharacteristics: model.userCharacteristics,
            recommendedMajors: model.recommendedMajors
        ))
        .toolbar {
            ToolbarItem(placement: .topBarTrailing, content: retryButton)
        }
    }
}

extension PathFinderView {
    @ViewBuilder
    func retryButton() -> some View {
        Button(action: model.reset) {
            Image(systemName: "arrow.clockwise")
                .setFont(.subheadline, .bold, .rounded)
                .setColor(Theme.Colors.primary.gradient)
        }
    }
    
    
    
    @ViewBuilder
    func backButton() -> some View {
        BackButton(color: Theme.Colors.primary)
    }
}
