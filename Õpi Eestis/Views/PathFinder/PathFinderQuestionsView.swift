import SwiftUI

extension PathFinderView {
    struct PathFinderQuestionsView: View {
        @ObservedObject var locale = DependencyManager.shared.localeManager
        @ObservedObject var model: PathFinderView.Model
        var body: some View {
            VStack(spacing: 0) {
                questionCountLabel()
                progressView()
                testViewContent()
                buttonContainer()
            }
            .padding(.top, 24)
            .padding(.horizontal, 32)
            .padding(.bottom, 32)
            .background(Theme.Colors.white)
        }
        
        @ViewBuilder
        func questionCountLabel() -> some View {
            HStack(spacing: 3) {
                Text(Theme.Locale.PathFinder.Test.question)
                Text(model.questionCountLabel)
            }
            .setColor(.black)
            .setFont(.body, .medium, .rounded)
            .maxWidth(alignment: .leading)
            .padding(.bottom, 4)
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
            .clipShape(Capsule())
            .padding(.bottom, 32)
        }
        
        @ViewBuilder
        func testViewContent() -> some View {
            if model.currentQuestionIndex < model.quizQuestions.count {
                questionCell(question: model.quizQuestions[model.currentQuestionIndex])
                    .maxSize()
            }
        }
        
        @ViewBuilder
        func buttonContainer() -> some View {
            HStack {
                previousButton()
                Spacer()
                nextButton(for: model.quizQuestions[model.currentQuestionIndex])
            }
            .padding(.top)
        }
    }
}


// MARK: - Cell

extension PathFinderView.PathFinderQuestionsView {
    @ViewBuilder
    func questionCell(question: QuizQuestion) -> some View {
        VStack(alignment: .leading, spacing: 24) {
            Text(locale.currentLocale == .estonian ? question.label : question.labelEn)
                .setFont(.body, .medium, .rounded)
                .setColor(Theme.Colors.black)
            VStack(spacing: 8) {
                ForEach(question.answers.indices, id: \.self) { index in
                    answerCell(answer: question.answers[index], question: question, index: index)
                }
            }
            .maxHeight(alignment: .top)
        }
        .maxSize(alignment: .top)
        .background(Theme.Colors.white)
    }
    
    @ViewBuilder
    func answerCell(answer: QuizAnswer, question: QuizQuestion, index: Int) -> some View {
        Text(locale.currentLocale == .estonian ? answer.label : answer.labelEn)
            .setColor(answer.isSelected ? Color.white : Color.black)
            .setFont(.subheadline, .regular, .rounded)
            .padding(.vertical)
            .maxWidth(alignment: .leading)
            .padding(.horizontal, 12)
            .modifier(AnswerBackground(answer: answer))
            .clipShape(.rect(cornerRadius: 12, style: .continuous))
            .contentShape(.rect)
            .onTapGesture(perform: { model.selectAnswer(for: question, at: index) })
    }
}

// MARK: - Button

extension PathFinderView.PathFinderQuestionsView {
    @ViewBuilder
    func previousButton() -> some View {
        if model.currentQuestionIndex != 0 {
            Text(Theme.Locale.PathFinder.Test.previous)
                .setFont(.subheadline, .medium, .rounded)
                .setColor(.black)
                .padding(.vertical, 14)
                .padding(.horizontal, 20)
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
            .padding(.vertical, 14)
            .padding(.horizontal, 32)
            .background(Theme.Colors.primary.gradient)
            .clipShape(.rect(cornerRadius: 12, style: .continuous))
            .contentShape(.rect)
            .onTapGesture(perform: model.nextQuestion)
            .opacity(model.isQuestionAnswered(question: question) ? 1 : 0)
            .disabled(model.isQuestionAnswered(question: question) ? false : true)
    }
    
}

// MARK: - Modifier

extension PathFinderView.PathFinderQuestionsView {
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
