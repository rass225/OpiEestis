import SwiftUI
import Combine
import MapKit

extension CollegeMajorView {
    class Model: ObservableObject {
        @Published var major: Major
        @Published var tabPool: [Tabs]
        @Published var tabSelection: Tabs
        @Published var isFavorite: Bool
        @Published var mapLocations: [MapLocation]
        @Published var viewState: ViewState
        
        let college: College
        
        private let majorInternal: Major
        private var cancellables = Set<AnyCancellable>()
        private let dependencies: DependencyManager
        
        init(
            major: Major,
            college: College,
            tabSelection: Tabs = .overview,
            dependencies: DependencyManager = .shared
        ) {
            self.major = major
            self.majorInternal = major
            self.college = college
            self.tabSelection = tabSelection
            self.isFavorite = false
            self.mapLocations = []
            self.viewState = .loading
            self.dependencies = dependencies
            
            var tabs: [Tabs] = []
            tabs.append(.overview)
            if !major.requirements.isEmpty {
                tabs.append(.requirements)
            }
            if major.personnel != nil {
                tabs.append(.personnel)
            }
            
            self.tabPool = tabs
            
            
            observeUserDefaults()
            updateIsFavorite()
            Task {
                await withTaskGroup(of: Void.self) { group in
                    group.addTask { await self.fetchCurriculum2() }
                    for await _ in group { }
                }
            }
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
    
    func openMap(_ link: String) {
        guard let url = URL(string: link) else { return }
        UIApplication.shared.open(url)
    }

    func addFavorite() {
        dependencies.userDefaults.addFavorite(university: college, major: majorInternal)
    }
                                        
    func removeFavorite() {
        dependencies.userDefaults.removeFavorite(university: college, major: majorInternal)
    }
    
    func loadSnapshots() async {
        let mentionedCollegeLocations = college.branches.filter { branch in
            major.studyLocation.contains { string in
                string.rawValue.contains(branch.city)
            }
        }
        
        for location in mentionedCollegeLocations {
            if !mapLocations.contains(where: { $0.address == location.address }) {
                await loadSnapshot(location: location)
            }
        }
    }
}

// MARK: - Private Methods

private extension CollegeMajorView.Model {
    func fetchCurriculum2() async {
        if let models = major.modules, !models.isEmpty {
            DispatchQueue.main.async {
                self.tabPool.append(.modules)
            }
        }
        if let outcomes = major.outcomes, !outcomes.isEmpty {
            DispatchQueue.main.async {
                self.tabPool.append(.outcomes)
            }
        }
        
        guard let urlString = major.curriculumRef else {
            print("ModuleRef not present")
            DispatchQueue.main.async {
                self.viewState = .success
            }
            return
        }
        guard let url = URL(string: urlString) else {
            print("Invalid URL.")
            return
        }

        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            
            if let httpResponse = response as? HTTPURLResponse, (200..<300).contains(httpResponse.statusCode) {
                processCurriculumData(data)
            } else if let httpResponse = response as? HTTPURLResponse {
                // This means the response was not within the 200-299 range.
                print("Invalid HTTP response: \(httpResponse.statusCode)")
            } else {
                print("Received non-HTTP response.")
            }
        } catch {
            print("Error fetching curriculum: \(error)")
        }
    }
    
    func processCurriculumData(_ data: Data) {
        do {
            let decodedResponse = try JSONDecoder().decode(Curriculum.self, from: data)
            
            // Update UI on the main thread
            DispatchQueue.main.async {
                self.major.eap = Int(decodedResponse.credits)
                if let primaryLanguage = decodedResponse.studyLanguages.first, let language =  Language(from: primaryLanguage) {
                    self.major.language = language
                }
                if let isEnglishOnly = self.major.isEnglishOnly, isEnglishOnly == true, let outcomesEn = decodedResponse.outcomesEn {
                    self.major.outcomes = [outcomesEn]
                } else {
                    self.major.outcomes = [decodedResponse.outcomesEt]
                }
                
                if !self.tabPool.contains(.outcomes) {
                    self.tabPool.append(.outcomes)
                }
                let nonNilVersions = decodedResponse.versions.filter({ $0.admissionYear != nil })
                if let latestVersion = nonNilVersions.max(by: { $0.admissionYear! < $1.admissionYear! }) {
                    let modules = latestVersion.convertCurriculumModulesToModules(isEnglishOnly: self.major.isEnglishOnly ?? false)
                    if modules.isEmpty {
                        self.major.modules = latestVersion.convertCurriculumOccupationalModulesToModules()
                    } else {
                        self.major.modules = modules
                    }
                    
                    if !self.tabPool.contains(.modules) {
                        self.tabPool.append(.modules)
                    }
                    self.viewState = .success
                }
            }
        } catch {
            DispatchQueue.main.async {
                print("Decoding error: \(error)")
                self.viewState = .success
            }
        }
    }
    
    func loadSnapshot(location: CollegeLocation) async {
        let options = MKMapSnapshotter.Options()
        options.region = MKCoordinateRegion(center: location.coordinates, latitudinalMeters: 3000, longitudinalMeters: 3000)
        options.size = CGSize(width: 400, height: 400)
        options.mapType = .standard
        
        do {
            let snapshotter = MKMapSnapshotter(options: options)
            let snapshot = try await snapshotter.snapshot()
            let image = snapshot.image
            
            UIGraphicsBeginImageContextWithOptions(image.size, true, image.scale)
            defer { UIGraphicsEndImageContext() }
            image.draw(at: CGPoint.zero)
            
            guard let finalImage = UIGraphicsGetImageFromCurrentImageContext() else { return }
            let mapLocation: MapLocation = .init(
                address: location.address,
                appleMapLink: location.appleMapLink,
                snapshot: finalImage
            )
            
            DispatchQueue.main.async {
                self.mapLocations.append(mapLocation)
            }
        } catch {
            print("Snapshot error: \(error)")
        }
    }
    
    func updateIsFavorite() {
        isFavorite = dependencies.userDefaults.isFavorite(university: college, major: majorInternal)
    }
    
    func observeUserDefaults() {
        NotificationCenter.default.publisher(for: UserDefaults.didChangeNotification)
            .sink { [weak self] _ in
                self?.updateIsFavorite()
            }
            .store(in: &cancellables)
    }
}

// MARK: - Objects

extension CollegeMajorView.Model {
    struct MapLocation: Hashable {
        let address: String
        let appleMapLink: String
        let snapshot: UIImage
    }
    
    struct Curriculum: Codable {
        var outcomesEt: String
        var outcomesEn: String?
        let credits: Double
        let studyLanguages: [String]
        let versions: [CurriculumVersion]
        
        enum CodingKeys: String, CodingKey {
            case outcomesEt
            case outcomesEn
            case credits
            case studyLanguages
            case versions
        }
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.outcomesEt = try container.decode(String.self, forKey: .outcomesEt)
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n•\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\r\n-\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "-\t", with: "**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n\n1) ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\r\n-", with: "\n\n**•**")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\r\n• ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n-", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\r\n1)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\r\n2)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\r\n3)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\r\n4)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\r\n5)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\r\n6)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n1.\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n1)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n2)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n3)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n4)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n5)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n6)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n7)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n8)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n9)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n1) ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n2) ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n3) ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n4) ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n5) ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n6) ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n7) ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n8) ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n9) ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "1.\t", with: "**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n2.\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n3.\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n4.\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n5.\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n6.\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n7.\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n8.\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n1.", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n2.", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n3.", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n4.", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n5.", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n6.", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n7.", with: "\n\n**•** ")
            
            self.outcomesEn = try container.decodeIfPresent(String.self, forKey: .outcomesEn)
            outcomesEn = outcomesEn?.replacingOccurrences(of: "\n1) ", with: "\n\n**•** ")
            outcomesEn = outcomesEn?.replacingOccurrences(of: "\n2) ", with: "\n\n**•** ")
            outcomesEn = outcomesEn?.replacingOccurrences(of: "\n3) ", with: "\n\n**•** ")
            outcomesEn = outcomesEn?.replacingOccurrences(of: "\n4) ", with: "\n\n**•** ")
            outcomesEn = outcomesEn?.replacingOccurrences(of: "\n5) ", with: "\n\n**•** ")
            outcomesEn = outcomesEn?.replacingOccurrences(of: "\n6) ", with: "\n\n**•** ")
            outcomesEn = outcomesEn?.replacingOccurrences(of: "\n7) ", with: "\n\n**•** ")
            outcomesEn = outcomesEn?.replacingOccurrences(of: "\n8) ", with: "\n\n**•** ")
            outcomesEn = outcomesEn?.replacingOccurrences(of: "\n9) ", with: "\n\n**•** ")
            self.credits = try container.decode(Double.self, forKey: .credits)
            self.studyLanguages = try container.decode([String].self, forKey: .studyLanguages)
            self.versions = try container.decode([CurriculumVersion].self, forKey: .versions)
        }
    }
    
    struct CurriculumVersion: Codable {
        let admissionYear: Int?
        let modules: [CurriculumModule]
        let occupationModules: [CurriculumOccupationalModule]
        
        func convertCurriculumModulesToModules(isEnglishOnly: Bool) -> [Module] {
            var newModules: [Module] = []
            modules.forEach { module in
                if isEnglishOnly {
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
                } else {
                    var newCourses: [Course] = []
                    module.subjects.forEach { courses in
                        let course: Course = .init(
                            name: courses.subject.nameEt,
                            eapCount: courses.subject.credits
                        )
                        newCourses.append(course)
                    }
                    let module: Module = .init(name: module.nameEt, courses: newCourses)
                    newModules.append(module)
                }
            }
            
            return newModules
        }
        
        func convertCurriculumOccupationalModulesToModules() -> [Module] {
            var newModules: [Module] = []
            occupationModules.forEach { module in
                var newCourses: [Course] = []
                module.themes.forEach { courses in
                    let course: Course = .init(
                        name: courses.nameEt,
                        eapCount: courses.credits
                    )
                    newCourses.append(course)
                }
                let module: Module = .init(name: module.nameEt, courses: newCourses)
                newModules.append(module)
            }
            
            return newModules
        }
    }
    
    struct CurriculumModule: Codable {
        let nameEt: String
        let nameEn: String
        let subjects: [CurriculumSubject]
    }
    
    struct CurriculumOccupationalModule: Codable {
        let nameEt: String
        let nameEn: String?
        let themes: [CurriculumTheme]
    }
    
    struct CurriculumSubject: Codable {
        let subject: CurriculumSubjectSubject
    }
    
    struct CurriculumTheme: Codable {
        let nameEt: String
        let nameEn: String?
        let credits: Double
    }
    
    struct CurriculumSubjectSubject: Codable {
        let nameEt: String
        let nameEn: String
        let credits: Double
    }
    
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
    
    enum ViewState {
        case loading
        case success
    }
}
