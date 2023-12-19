import SwiftUI

extension PathFinderView {
    class Model: ObservableObject {
        let colleges: [College]
        @Published var viewState: ViewState = .start
        @Published var quizQuestions: [QuizQuestion] = []
        @Published var currentQuestionIndex = 0
        @Published var recommendedMajors: [RecommendedMajor] = []
        @Published var currentEducation: EducationLevel = .basic
        @Published var isSpeakingEstonian: Bool = true
        @Published var isSpeakingEnglish: Bool = true
        

        private var majors: [NewMajor] = []
        private let dependencies = DependencyManager.shared
        
        var progress: CGFloat {
            Double(currentQuestionIndex + 1) / Double(quizQuestions.count)
        }
        
        var questionCountLabel: String {
            "\(currentQuestionIndex + 1) / \(quizQuestions.count)"
        }
        
        var toolbarVisibility: Visibility {
            switch viewState {
            case .start, .test, .proccessing, .setup:
                return .hidden
            case .result:
                return .automatic
            }
        }
        
        init(colleges: [College]) {
            self.colleges = colleges
            self.setupModel()
        }
        
        var givenAnswers: [QuizAnswer] {
            quizQuestions
                .map(\.answers)
                .flatMap { $0 }
                .filter(\.isSelected)
        }
        
        var userCharacteristics: Characteristics {
            givenAnswers.sumCharacteristics()
        }
    }
}

extension PathFinderView.Model {
    func start() {
        viewState = .setup
    }
    
    func setup() {
        viewState = .test
    }
    
    func processComplete() {
        viewState = .result
    }
    func shuffle() {
        quizQuestions = quizQuestions.shuffled()
    }
    
    func reset() {
        fetchQuestionaire()
        currentQuestionIndex = 0
        viewState = .start
    }
    
    func showPrevious() {
        guard currentQuestionIndex != 0 else { return }
        currentQuestionIndex -= 1
    }
    
    func isQuestionAnswered(question: QuizQuestion) -> Bool {
        question
            .answers
            .map(\.isSelected)
            .contains( where: { $0 == true })
    }
}

extension PathFinderView.Model {
    func selectAnswer(for question: QuizQuestion, at index: Int) {
        if let questionIndex = quizQuestions.firstIndex(where: { $0 == question }) {
            for i in quizQuestions[questionIndex].answers.indices {
                quizQuestions[questionIndex].answers[i].isSelected = (i == index)
            }
        }
    }
    
    func progressWidth(for totalWidth: CGFloat) -> CGFloat {
        let width = CGFloat(progress) * totalWidth
        print(width)
        return width
    }
    
    func nextQuestion() {
        if currentQuestionIndex < quizQuestions.count - 1 {
            currentQuestionIndex += 1
        } else {
            recommendedMajors = findMatches(for: userCharacteristics, in: majors)
            viewState = .proccessing
        }
    }
}

private extension PathFinderView.Model {
    func setupModel() {
        fetchQuestionaire()
        fetchAllMajors()
    }
    
    func fetchQuestionaire() {
        fetchQuestionaireLocally()
    }
    
    func findMatches(for userPreferences: Characteristics, in majors: [NewMajor]) -> [RecommendedMajor] {
        let maxDistance = maximumPossibleDistance()
        let recommendedMajors = majors
            .filter(filterPrerequisates(_:))
            .map { major in
                let distance = calculateEuclideanDistance(between: major, and: userPreferences)
                let matchPercentage = (1 - (distance / maxDistance)) * 100
                let recommendedMajor = RecommendedMajor(
                    major: major,
                    matchPercentage: max(0, min(matchPercentage, 100))
                )
                return recommendedMajor
            }
            .sorted { $0.matchPercentage > $1.matchPercentage }
            .prefix(5)
        return Array(recommendedMajors)
    }
    
    func filterPrerequisates(_ major: NewMajor) -> Bool {
        guard currentEducation.availableStudyOptions.contains(major.level) else { return false }
        if isSpeakingEstonian, major.languages.contains(.estonian) {
            return true
        }
        if isSpeakingEnglish && major.languages.contains(.english) {
            return true
        }
        
        return false
    }
    
    func fetchQuestionaireLocally() {
        let ref = "Questionnaire"
        if let url = Bundle.main.url(forResource: ref, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([QuizQuestion].self, from: data)
                quizQuestions = jsonData.shuffled()
            } catch {
                print("Error loading file:", error)
            }
        } else {
            print("Error loading file:", ref)
        }
    }
    
    func calculateEuclideanDistance(between major: NewMajor, and userPreferences: Characteristics) -> Double {
        var differences: [Int] = []
        
        if let structureAndInnovation = major.characteristics?.structureAndInnovation {
            let value = structureAndInnovation - userPreferences.structureAndInnovation
            differences.append(value)
        }
        
        if let academiaAndCareer = major.characteristics?.academiaAndCareer {
            let value = academiaAndCareer - userPreferences.academiaAndCareer
            differences.append(value)
        }
        
        if let independenceAndCollaboration = major.characteristics?.independenceAndCollaboration {
            let value = independenceAndCollaboration - userPreferences.independenceAndCollaboration
            differences.append(value)
        }
        
        if let localAndGlobal = major.characteristics?.localAndGlobal {
            let value = localAndGlobal - userPreferences.localAndGlobal
            differences.append(value)
        }
        
        if let lowAndHighTech = major.characteristics?.lowAndHighTech {
            let value = lowAndHighTech - userPreferences.lowAndHighTech
            differences.append(value)
        }
        
        if let theoreticalAndApplied = major.characteristics?.theoreticalAndApplied {
            let value = theoreticalAndApplied - userPreferences.theoreticalAndApplied
            differences.append(value)
        }
        
        let sumOfSquares = differences.reduce(0) { $0 + $1 * $1 }
        return sqrt(Double(sumOfSquares))
    }
    
    func fetchAllMajors() {
        Task {
            var fetchMajors: [NewMajor] = []
            for college in self.colleges {
                let majors = try await self.dependencies.network.fetchMajors(schoolId: college.id)
                fetchMajors.append(contentsOf: majors)
            }
            let finilizedMajors = fetchMajors
            DispatchQueue.main.async {
                self.majors = finilizedMajors.filter({ $0.characteristics != nil })
                print(self.majors.count)
            }
        }
    }
    
    func maximumPossibleDistance() -> Double {
        let maxDifferencePerCharacteristic = 100
        let numberOfCharacteristics = 6  // since there are 6 characteristics
        let maxTotalSquare = numberOfCharacteristics * (maxDifferencePerCharacteristic * maxDifferencePerCharacteristic)
        return sqrt(Double(maxTotalSquare))
    }
}

extension PathFinderView.Model {
    enum ViewState {
        case start
        case setup
        case test
        case proccessing
        case result
    }
}


struct QuizQuestion: Codable, Equatable, Hashable {
    let label: String
    let labelEn: String
    var answers: [QuizAnswer]
}

struct QuizAnswer: Codable, Equatable, Hashable {
    let label: String
    let labelEn: String
    let affect: Characteristics
    var isSelected: Bool = false
    
    enum CodingKeys: String, CodingKey {
        case label
        case labelEn
        case affect
    }
}

struct Characteristics: Codable, Equatable, Hashable {
    let structureAndInnovation: Int
    let academiaAndCareer: Int
    let independenceAndCollaboration: Int
    let localAndGlobal: Int
    let lowAndHighTech: Int
    let theoreticalAndApplied: Int
}

enum EducationLevel: CaseIterable {
    case basic
    case vocational
    case secondary
    case bachelors
    case masters
    case doctors
    
    var label: String {
        switch self {
        case .basic: return "Põhiharidus"
        case .vocational: return "Kutseharidus"
        case .secondary: return "Keskharidus"
        case .bachelors: return "Bakalaureus"
        case .masters: return "Magister"
        case .doctors: return "Doktor"
        }
    }
    
    var availableStudyOptions: [Level] {
        switch self {
        case .basic:
            return [.vocational]
        case .vocational:
            return [.vocational, .bachelor, .applied]
        case .secondary:
            return [.vocational, .bachelor, .applied]
        case .bachelors:
            return [.vocational, .bachelor, .applied, .masters]
        case .masters:
            return [.masters, .doctor]
        case .doctors:
            return [.masters, .doctor]
        }
    }
}
