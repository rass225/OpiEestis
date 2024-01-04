import SwiftUI
import Combine

extension PersonalityTestView {
    class Model: ObservableObject {
        @Published private(set) var currentLocale: AppLocale = .english
        @Published private(set) var viewState: ViewState = .start
        @Published private(set) var quizQuestions: [MbtiQuestion] = []
        @Published var personalityType: PersonalityType?
        @Published var dominanceResult: [MbtiDominance]?
        var result: PersonalityTestResult?

        private var user: FirebaseUser?
        private var cancellables = Set<AnyCancellable>()
        private let dependencies = DependencyManager.shared
        
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
        
        var historyButtonVisible: Bool {
            switch viewState {
            case .start, .result:
                return true
            case .test, .processing:
                return false
            }
        }
        
        var givenAnswers: [MbtiAnswer] {
            quizQuestions
                .map(\.answers)
                .flatMap { $0 }
                .filter(\.isSelected)
        }
        
        var isTestCompleted: Bool {
            return quizQuestions.allSatisfy { $0.answers.contains { $0.isSelected } }
        }
        
        init(
            appState: AppState
        ) {
            self.setupModel()
            
            appState.$user
                .sink { [weak self] user in
                    guard let self else { return }
                    self.user = user
                }
                .store(in: &cancellables)
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
        let scores = calculateScores(questions: quizQuestions)
        let percentages = calculatePercentages(for: scores, questions: quizQuestions)
        let personalityType = constructMBTIPersonalityType(from: scores)
        let dominance = calculateMbtiDominance(with: percentages)
        guard let personalityType else { return }
        let result = createResult(
            personalityType: personalityType,
            dominance: dominance
        )
        self.result = result
        addResult(result)
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

private extension PersonalityTestView.Model {
    func createResult(
        personalityType: PersonalityType,
        dominance: [MbtiDominance]
    ) -> PersonalityTestResult {
        let result: PersonalityTestResult = .init(
            personalityType: personalityType,
            percentages: dominance,
            dateCreated: Date().dateAndTimeString
        )
        return result
    }
    
    func addResult(_ result: PersonalityTestResult) {
        guard let user else { return }
        Task {
            try await dependencies.network.addPersonalityTestResult(
                userId: user.id,
                result: result
            )
        }
    }
    
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
                let mergedQuestions = Array(
                    extraversionIntroversion +
                    sensingIntuition +
                    feelingThinking +
                    judgingPerceiving
                )
                    .shuffled()
                    .prefix(3)
                quizQuestions = Array(mergedQuestions)
            } catch {
                print("Error loading file:", error)
            }
        } else {
            print("Error loading file:", ref)
        }
    }
    
    func setupModel() {
        fetchMbtiQuestionsLocally()
        
        DependencyManager.shared.localeManager.$currentLocale
            .sink { [weak self] currentLocale in
                guard let self else { return }
                self.currentLocale = currentLocale
            }
            .store(in: &cancellables)
    }
    
    func calculateScores(questions: [MbtiQuestion]) -> [MbtiCategory: Int] {
        var scores: [MbtiCategory: Int] = [
            .extraversionIntroversion: 0,
            .sensingIntuition: 0,
            .feelingThinking: 0,
            .judgingPerceiving: 0
        ]

        for question in questions {
            if let selectedAnswer = question.answers.first(where: \.isSelected) {
                scores[question.categoryPair, default: 0] += selectedAnswer.value
            }
        }

        return scores
    }
    
    func calculatePercentages(
        for scores: [MbtiCategory: Int],
        questions: [MbtiQuestion]
    ) -> [MbtiCategory: (String, Float)] {
        var percentages: [MbtiCategory: (String, Float)] = [:]

        for category in MbtiCategory.allCases {
            let positiveScore = questions
                .filter { $0.categoryPair == category }
                .flatMap { $0.answers }
                .filter { $0.isSelected && $0.value > 0 }
                .reduce(0) { $0 + $1.value }

            let negativeScore = questions
                .filter { $0.categoryPair == category }
                .flatMap { $0.answers }
                .filter { $0.isSelected && $0.value < 0 }
                .reduce(0) { $0 + abs($1.value) }

            let totalScore = positiveScore + negativeScore
            let dominantTrait = scores[category, default: 0] >= 0 ? category.rawValue.split(separator: "-")[1] : category.rawValue.split(separator: "-")[0]
            let percentage = totalScore == 0 ? 50.0 : Float(positiveScore >= negativeScore ? positiveScore : negativeScore) / Float(totalScore) * 100.0

            percentages[category] = (String(dominantTrait), percentage)
        }

        return percentages
    }

    func constructMBTIPersonalityType(
        from scores: [MbtiCategory: Int]
    ) -> PersonalityType? {
        let ei = scores[.extraversionIntroversion, default: 0] < 0 ? "E" : "I"
        let sn = scores[.sensingIntuition, default: 0] < 0 ? "S" : "N"
        let ft = scores[.feelingThinking, default: 0] < 0 ? "F" : "T"
        let jp = scores[.judgingPerceiving, default: 0] < 0 ? "J" : "P"

        let mbtiType = ei + sn + ft + jp

        return PersonalityType(rawValue: mbtiType)
    }


    func calculateMbtiDominance(
        with percentages: [MbtiCategory: (String, Float)]
    ) -> [MbtiDominance] {
        let orderedCategories: [MbtiCategory] = [
            .extraversionIntroversion,
            .sensingIntuition,
            .feelingThinking,
            .judgingPerceiving
        ]
        var dominanceArray: [MbtiDominance] = []

        for category in orderedCategories {
            if let percentageData = percentages[category],
               let dominantCategory = MBTICategoryTrait(rawValue: percentageData.0) {
                let dominanceValue = CGFloat(percentageData.1)
                let dominance = MbtiDominance(
                    categoryPair: category,
                    dominantCategory: dominantCategory,
                    dominanceValue: dominanceValue
                )
                dominanceArray.append(dominance)
            }
        }

        return dominanceArray
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
    let categoryPair: MbtiCategory
    var answers: [MbtiAnswer]
}

enum MbtiCategory: String, CaseIterable, Codable {
    case extraversionIntroversion = "Extraversion-Introversion"
    case sensingIntuition = "Sensing-Intuition"
    case feelingThinking = "Feeling-Thinking"
    case judgingPerceiving = "Judging-Perceiving"
    
    var negativeIndicator: LocalizedStringKey {
        let categories = Theme.Locale.PersonalityTest.PersonalityType.Category.self
        switch self {
        case .extraversionIntroversion: return categories.extraverted
        case .sensingIntuition: return categories.sensing
        case .feelingThinking: return categories.feeling
        case .judgingPerceiving: return categories.judging
        }
    }
    
    var positiveIndicator: LocalizedStringKey {
        let categories = Theme.Locale.PersonalityTest.PersonalityType.Category.self
        switch self {
        case .extraversionIntroversion: return categories.introverted
        case .sensingIntuition: return categories.intuitive
        case .feelingThinking: return categories.thinking
        case .judgingPerceiving: return categories.perceiving
        }
    }
}

enum MBTICategoryTrait: String, CaseIterable, Codable {
    case extraversion = "Extraversion"
    case introversion = "Introversion"
    case sensing = "Sensing"
    case intuition = "Intuition"
    case feeling = "Feeling"
    case thinking = "Thinking"
    case judging = "Judging"
    case perceiving = "Perceiving"

    var alignment: Alignment {
        switch self {
        case .extraversion, .sensing, .feeling, .judging:
            return .leading
        case .introversion, .intuition, .thinking, .perceiving:
            return .trailing
        }
    }
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

struct MbtiDominance: Equatable, Hashable, Codable {
    let categoryPair: MbtiCategory
    let dominantCategory: MBTICategoryTrait
    let dominanceValue: CGFloat
}
