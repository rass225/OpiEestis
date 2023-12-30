import SwiftUI

extension PersonalityTestView {
    class Model: ObservableObject {
        @Published private(set) var viewState: ViewState = .start
        @Published private(set) var quizQuestions: [MbtiQuestion] = []
        @Published private(set) var pagedQuestions: [[MbtiQuestion]] = []
        @Published var currentQuestionIndex = 0
        @Published var result: PersonalityType?

        let questionsPerPage = 10
        
        
        var progress: CGFloat {
            Double(currentQuestionIndex + 1) / Double(quizQuestions.count)
        }
        
        var completionPercentage: Double {
            let completedCount = Double(givenAnswers.count)
            let totalCount = Double(quizQuestions.count)
            let percentage = Double(completedCount * 100 / totalCount)
            return percentage
        }
        
        var toolbarVisibility: Visibility {
            switch viewState {
            case .start, .processing:
                return .hidden
            case .result, .test:
                return .automatic
            }
        }
        
        var backButtonVisible: Bool {
            switch viewState {
            case .test, .processing:
                return false
            case .start, .result:
                return true
            }
        }
        
        var givenAnswers: [MbtiAnswer] {
            quizQuestions
                .map(\.answers)
                .flatMap { $0 }
                .filter(\.isSelected)
        }
        
        var isTestCompleted: Bool {
            for item in quizQuestions {
                if !item.answers.contains(where: { $0.isSelected == true }) {
                    return false
                }
            }
            return true
        }
        
        init() {
            self.setupModel()
        }
    }
}

// MARK: - Public methods

extension PersonalityTestView.Model {
    func startTest() {
        viewState = .test
    }
    
    func startProccessing() {
        viewState = .processing
        calculateResult(questions: quizQuestions)
    }
    
    func processComplete() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
            self.viewState = .result
        }
    }
    
    func isQuestionAnswered(question: MbtiQuestion) -> Bool {
        question
            .answers
            .map(\.isSelected)
            .contains( where: { $0 == true })
    }
    
    func selectAnswer(for question: MbtiQuestion, at index: Int) {
        if let questionIndex = quizQuestions.firstIndex(where: { $0 == question }) {
            for i in quizQuestions[questionIndex].answers.indices {
                quizQuestions[questionIndex].answers[i].isSelected = (i == index)
            }
        }
    }
}

// MARK: - Private methods

extension PersonalityTestView.Model {
    func fetchMbtiQuestionsLocally() {
        let ref = "mbti_questions"
        if let url = Bundle.main.url(forResource: ref, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([MbtiQuestion].self, from: data)
                let extraversionIntroversion = jsonData
                    .filter({ $0.categoryPair == .extraversionIntroversion})
                    .shuffled()
                    .prefix(20)
                let sensingIntuition = jsonData
                    .filter({ $0.categoryPair == .sensingIntuition})
                    .shuffled()
                    .prefix(20)
                let feelingThinking = jsonData
                    .filter({ $0.categoryPair == .feelingThinking})
                    .shuffled()
                    .prefix(20)
                let judgingPerceiving = jsonData
                    .filter({ $0.categoryPair == .judgingPerceiving})
                    .shuffled()
                    .prefix(20)
                let mergedQuestions = Array(extraversionIntroversion + sensingIntuition + feelingThinking + judgingPerceiving)
                    .shuffled()
//                    .prefix(10)
                quizQuestions = Array(mergedQuestions.prefix(3))
                self.pagedQuestions = stride(from: 0, to: mergedQuestions.count, by: questionsPerPage).map {
                    Array(mergedQuestions[$0..<min($0 + questionsPerPage, mergedQuestions.count)])
                }
            } catch {
                print("Error loading file:", error)
            }
        } else {
            print("Error loading file:", ref)
        }
    }
    
    func setupModel() {
        fetchMbtiQuestionsLocally()
    }
    
    func calculateResult(questions: [MbtiQuestion]) {
        var scores: [MbtiCateogry: Int] = [.extraversionIntroversion: 0, .sensingIntuition: 0, .feelingThinking: 0, .judgingPerceiving: 0]

        // Accumulate scores
        for question in questions {
            if let selectedAnswer = question.answers.first(where: { $0.isSelected }) {
                scores[question.categoryPair, default: 0] += selectedAnswer.value
            }
        }

        // Determine MBTI type
        let ei = scores[.extraversionIntroversion, default: 0] <= 0 ? "E" : "I"
        let sn = scores[.sensingIntuition, default: 0] <= 0 ? "S" : "N"
        let ft = scores[.feelingThinking, default: 0] <= 0 ? "F" : "T"
        let jp = scores[.judgingPerceiving, default: 0] <= 0 ? "J" : "P"

        let mbtiType = ei + sn + ft + jp

        result = PersonalityType(rawValue: mbtiType)
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


struct MbtiQuestion: Codable, Equatable, Hashable {
    let label: String
    let labelEn: String
    let categoryPair: MbtiCateogry
    var answers: [MbtiAnswer]
}

enum MbtiCateogry: String, CaseIterable, Codable {
    case extraversionIntroversion = "Extraversion-Introversion"
    case sensingIntuition = "Sensing-Intuition"
    case feelingThinking = "Feeling-Thinking"
    case judgingPerceiving = "Judging-Perceiving"
}

struct MbtiAnswer: Codable, Equatable, Hashable {
    let label: String
    let labelEn: String
    var value: Int
    var isSelected: Bool = false
    
    enum CodingKeys: String, CodingKey {
        case label
        case labelEn
        case value
    }
}
