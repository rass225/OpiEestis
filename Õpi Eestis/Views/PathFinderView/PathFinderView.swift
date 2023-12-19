import SwiftUI

struct PathFinderView: View {
    @ObservedObject var locale = DependencyManager.shared.localeManager
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
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(model.toolbarVisibility, for: .navigationBar)
        .toolbar {
            ToolbarItem(placement: .principal, content: AppPrincipal.init)
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
        PathFinderSetupView(completion: { education, isSpeakingEstonian, isSpeakingEnglish in
            model.setup(
                currentEducation: education,
                isSpeakingEstonian: isSpeakingEstonian,
                isSpeakingEnglish: isSpeakingEnglish
            )
        })
    }
    
    @ViewBuilder
    func testView() -> some View {
        VStack(spacing: 0) {
            testViewHeader()
            testViewContent()
        }
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
    func testViewHeader() -> some View {
        VStack(alignment: .leading, spacing: 8) {
            questionCountLabel()
            progressView()
        }
        .padding(.vertical)
        .padding(.bottom)
        .padding(.horizontal, 24)
        .background(.white)
    }
    
    @ViewBuilder
    func testViewContent() -> some View {
        GeometryReader { geo in
            let size = geo.size
            VStack {
                if model.currentQuestionIndex < model.quizQuestions.count {
                    questionCell(question: model.quizQuestions[model.currentQuestionIndex])
                        .padding(.horizontal, 20)
                        .frame(height: size.height / 1.1)
                }
            }
            .maxSize()
            .background(Theme.Colors.white)
        }
    }
    
    @ViewBuilder
    func questionCountLabel() -> some View {
        HStack(spacing: 2) {
            Text(Theme.Locale.PathFinder.Test.question)
            Text(model.questionCountLabel)
        }
        .setColor(.black)
        .setFont(.title3, .medium, .rounded)
    }
    
    @ViewBuilder
    func progressView() -> some View {
        GeometryReader { innerGeo in
            let innerSize = innerGeo.size
            ZStack(alignment: .leading) {
                Capsule(style: .continuous)
                    .fill(Theme.Colors.primary.gradient.opacity(0.175))
                    .frame(height: 20)
                    .maxWidth()
                Capsule(style: .continuous)
                    .fill(Theme.Colors.primary.gradient)
                    .frame(maxWidth: model.progress * innerSize.width)
                    .animation(.linear(duration: 0.5), value: model.progress)
            }
        }
        .frame(height: 20)
    }
}

// MARK: - Button

extension PathFinderView {
    @ViewBuilder
    func previousButton() -> some View {
        if model.currentQuestionIndex != 0 {
            Text(Theme.Locale.PathFinder.Test.previous)
                .setFont(.subheadline, .medium, .rounded)
                .setColor(.black)
                .padding(.vertical, 12)
                .padding(.horizontal, 10)
                .background(Theme.Colors.systemGray)
                .clipShape(.rect(cornerRadius: 12, style: .continuous))
                .contentShape(.rect)
                .onTapGesture(perform: model.showPrevious)
        }
    }
    
    @ViewBuilder
    func nextButton(for question: QuizQuestion) -> some View {
        Text(model.currentQuestionIndex == model.quizQuestions.count - 1 ? Theme.Locale.PathFinder.Test.submit : Theme.Locale.PathFinder.Test.next)
            .setFont(.subheadline, .medium, .rounded)
            .setColor(.white)
            .padding(.vertical, 12)
            .padding(.horizontal, 20)
            .background(Theme.Colors.primary.gradient)
            .clipShape(.rect(cornerRadius: 12, style: .continuous))
            .contentShape(.rect)
            .onTapGesture(perform: model.nextQuestion)
            .opacity(model.isQuestionAnswered(question: question) ? 1 : 0)
            .disabled(model.isQuestionAnswered(question: question) ? false : true)
    }
    
    @ViewBuilder
    func retryButton() -> some View {
        Button(action: model.reset) {
            Image(systemName: "arrow.clockwise")
                .setFont(.subheadline, .bold, .rounded)
                .setColor(Theme.Colors.primary.gradient)
        }
    }
}


// MARK: - Cell

extension PathFinderView {
    @ViewBuilder
    func questionCell(question: QuizQuestion) -> some View {
        VStack(alignment: .leading, spacing: 24) {
            Text(question.labelEn)
                .setFont(.title3, .medium, .rounded)
                .setColor(Theme.Colors.black)
            VStack(spacing: 8) {
                ForEach(question.answers.indices, id: \.self) { index in
                    answerCell(answer: question.answers[index], question: question, index: index)
                }
            }
            .maxHeight(alignment: .top)
            HStack {
                previousButton()
                Spacer()
                nextButton(for: question)
            }
        }
        .padding(16)
        .maxSize(alignment: .top)
        .background(Theme.Colors.white)
        .clipShape(.rect(cornerRadius: 16, style: .continuous))
        .shadow(color: Theme.Colors.gray.opacity(0.4), radius: 4, x: 0, y: 0)
    }
    
    @ViewBuilder
    func answerCell(answer: QuizAnswer, question: QuizQuestion, index: Int) -> some View {
        HStack(spacing: 8) {
            Text(locale.currentLocale == .estonian ? answer.label : answer.labelEn)
                .setColor(answer.isSelected ? Color.white : Color.black)
                .setFont(.subheadline, answer.isSelected ? .medium : .medium, .rounded)
                .padding(.vertical)
                .maxWidth(alignment: .leading)
                
            Image(systemName: "checkmark.circle.fill")
                .setFont(.title2, .semibold, .rounded)
                .setColor(.white)
                .opacity(answer.isSelected ? 1 : 0)
        }
        .padding(.horizontal, 12)
        .modifier(AnswerBackground(answer: answer))
        .clipShape(.rect(cornerRadius: 12, style: .continuous))
        .contentShape(.rect)
        .onTapGesture(perform: { model.selectAnswer(for: question, at: index) })
    }
}

// MARK: - Modifier

extension PathFinderView {
    struct AnswerBackground: ViewModifier {
        let answer: QuizAnswer
        
        func body(content: Content) -> some View {
            if answer.isSelected {
                content
                    .background(Theme.Colors.primary.gradient)
            } else {
                content
                    .background(Theme.Colors.systemGray)
            }
        }
    }
}
