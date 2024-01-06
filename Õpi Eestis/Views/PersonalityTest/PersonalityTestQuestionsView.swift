import SwiftUI

extension PersonalityTestView {
    struct PersonalityTestQuestionsView: View {
        @ObservedObject var model: PersonalityTestView.Model
        var body: some View {
            VStack {
                headerView()
                List {
                    questionsList()
                    Section(content: submitButton)
                        .listRowSeparator(.hidden)
                        .listRowInsets(.zero)
                }
                .listStyle(.plain)
            }
        }
    }
}

extension PersonalityTestView.PersonalityTestQuestionsView {
    @ViewBuilder
    func headerView() -> some View {
        HStack(spacing: 8) {
            HStack(spacing: 3) {
                Text("\(model.completionCount) / \(model.quizQuestions.count)")
            }
            Text("•")
                .setColor(.gray)
                .setFont(.body, .regular, .rounded)
            HStack(spacing: 3) {
                Text("\(model.completionPercentage.decimals(0))%")
                Text(Theme.Locale.PersonalityTest.Test.completed)
            }
            
            
            
        }
        .setFont(.body, .semibold, .rounded)
        .padding(.top, 6)
        .padding(.horizontal, 32)
    }
    
    @ViewBuilder
    func questionsList() -> some View {
        ForEach(model.quizQuestions, id: \.self) { question in
            questionCell(question: question)
        }
        .listRowSeparator(.hidden)
        .listRowInsets(.init(top: 0, leading: 16, bottom: 0, trailing: 16))
        .listRowBackground(Color.clear)
    }
    
    @ViewBuilder
    func questionCell(question: MbtiQuestion) -> some View {
        VStack(alignment: .leading) {
            Text(model.currentLocale == .estonian ? question.label : question.labelEn)
                .setFont(.title3, .regular, .rounded)
            VStack(alignment: .leading) {
                ForEach(question.answers.indices, id: \.self) { index in
                    answerCell(answer: question.answers[index], question: question, index: index)
                }
            }
        }
        .maxWidth(alignment: .leading)
        .padding()
        .padding(.bottom, 4)
        .modifier(QuestionBackground(isSelected: model.isQuestionAnswered(question: question)))
        .padding(.vertical, 8)
    }
    
    @ViewBuilder
    func answerCell(answer: MbtiAnswer, question: MbtiQuestion, index: Int) -> some View {
        Text(model.currentLocale == .estonian ? answer.label : answer.labelEn)
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
    
    @ViewBuilder
    func submitButton() -> some View {
        Text(Theme.Locale.PathFinder.Test.submit)
            .setColor(.white)
            .setFont(.title3, .medium, .rounded)
            .padding(.vertical)
            .maxWidth()
            .background(Theme.Colors.primary.gradient)
            .clipShape(.rect(cornerRadius: 12, style: .continuous))
            .opacity(model.isTestCompleted ? 1 : 0.4)
            .onTapGesture(perform: model.startProccessing)
            .padding(.top, 24)
            .padding(.horizontal, 32)
            .padding(.bottom, 32)
    }
}

extension PersonalityTestView.PersonalityTestQuestionsView {
    struct AnswerBackground: ViewModifier {
        let answer: MbtiAnswer
        
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
    
    struct QuestionBackground: ViewModifier {
        let isSelected: Bool
        
        func body(content: Content) -> some View {
            if isSelected {
                content
                    .background(Theme.Colors.white)
                    .overlay {
                        Theme.Colors.primary.opacity(0.1)
                            .clipShape(.rect(cornerRadius: 12, style: .continuous))
                            .allowsHitTesting(false)
                    }
            } else {
                content
                    .background(Theme.Colors.white)
            }
        }
    }
}
