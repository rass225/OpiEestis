import SwiftUI
import Combine

extension CollegeMajorView {
    class Model: ObservableObject {
        let major: majorsMinors
        let college: College
        let tabPool: [Tabs]
        
        @Published var testModules: [Module] = []
        
        private let userDefaultsManager = UserDefaultsManager()
        private var cancellables = Set<AnyCancellable>()
        
        @Published var tabSelection: Tabs = .outcomes
        @Published var isFavorite: Bool = false
        
        var eapTopLabel: Int {
            if major.hasEap() {
                return  major.eap!
            } else {
                return major.ekap!
            }
        }
        
        init(
            major: majorsMinors,
            college: College,
            tabSelection: Tabs = .overview
        ) {
            self.major = major
            self.college = college
            self.tabSelection = tabSelection
            
            var tabs: [Tabs] = []
            tabs.append(.overview)
            if !major.modules.isEmpty {
                tabs.append(.modules)
            }
            if !major.outcomes.isEmpty {
                tabs.append(.outcomes)
            }
            if !major.requirements.isEmpty {
                tabs.append(.requirements)
            }
            if major.personnel != nil {
                tabs.append(.personnel)
            }
            
            self.tabPool = tabs
            
            NotificationCenter.default.publisher(for: UserDefaults.didChangeNotification)
                .sink { [weak self] _ in
                    self?.updateIsFavorite()
                }
                .store(in: &cancellables)
            
            updateIsFavorite()
            fetchModules()
        }
    }
}

extension CollegeMajorView.Model {
    func openWebsite() {
        guard let url = URL(string: major.majorWebsite) else { return }
        UIApplication.shared.open(url)
    }
    
    func openPhone(_ urlString: String) {
        let prefix = "tel:"
        guard let url = URL(string: prefix + urlString) else { return }
        UIApplication.shared.open(url)
    }
    
    func openMail(_ urlString: String) {
        let prefix = "mailto:"
        guard let url = URL(string: prefix + urlString) else { return }
        UIApplication.shared.open(url)
    }
    
    func fetchModules() {
        guard let url = URL(string: "https://tahvel.edu.ee/hois_back/public/curriculum/753/7215?format=json") else {
            print("Invalid URL.")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedResponse = try JSONDecoder().decode(PallasCurriculum.self, from: data)
                    DispatchQueue.main.async {
                        self.testModules = decodedResponse.convertToModules()
                    }
                } catch {
                    print("Decoding error: \(error)")
                }
            } else if let error = error {
                print("Error fetching posts: \(error)")
            }
        }
        task.resume()
    }
    
    private func updateIsFavorite() {
        isFavorite = userDefaultsManager.isFavorite(university: college, major: major)
    }
    
    func addFavorite() {
        userDefaultsManager.addFavorite(university: college, major: major)
    }
                                        
    func removeFavorite() {
        userDefaultsManager.removeFavorite(university: college, major: major)
    }
}

extension CollegeMajorView.Model {
    enum Tabs: CaseIterable {
        case overview
        case requirements
        case modules
        case outcomes
        case personnel
        
        var image: Image {
            switch self {
            case .overview: return .docFill
            case .requirements: return .requirementsFill
            case .modules: return .stackFill
            case .outcomes: return .outcomesFill
            case .personnel: return .person2Fill
            }
        }
    }
    
    struct PallasCurriculum: Codable {
        let modules: [PallasModule]
        
        func convertToModules() -> [Module] {
            var newModules: [Module] = []
            modules.forEach { module in
                var newCourses: [Course] = []
                module.subjects.forEach { courses in
                    let course: Course = .init(
                        name: courses.subject.nameEn,
                        eapCount: courses.subject.credits
                    )
                    newCourses.append(course)
                }
                let module: Module = .init(name: module.nameEn, courses: newCourses)
                newModules.append(module)
            }
            
            return newModules
        }
    }
    
    struct PallasModule: Codable {
        let nameEt: String
        let nameEn: String
        let subjects: [PallasSubject]
    }
    
    struct PallasSubject: Codable {
        let subject: PallasSubjectSubject
    }
    
    struct PallasSubjectSubject: Codable {
        let nameEt: String
        let nameEn: String
        let credits: Double
    }
    
    struct testime: Codable {
        let admissionYear: Int
    }
}
