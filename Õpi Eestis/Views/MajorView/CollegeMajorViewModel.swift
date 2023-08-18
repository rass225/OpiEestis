import SwiftUI
import Combine
import MapKit

extension CollegeMajorView {
    class Model: ObservableObject {
        @Published var major: majorsMinors
        @Published var tabPool: [Tabs]
        @Published var tabSelection: Tabs = .outcomes
        @Published var isFavorite: Bool = false
        @Published var mapLocations: [MapLocation] = []
        @Published var viewState: ViewState = .loading
        @Published var karlerror: String = ""
        let college: College
        private let majorInternal: majorsMinors
        private let userDefaultsManager = UserDefaultsManager()
        private var cancellables = Set<AnyCancellable>()
        
        init(
            major: majorsMinors,
            college: College,
            tabSelection: Tabs = .overview
        ) {
            self.major = major
            self.majorInternal = major
            self.college = college
            self.tabSelection = tabSelection
            
            var tabs: [Tabs] = []
            tabs.append(.overview)
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
        userDefaultsManager.addFavorite(university: college, major: majorInternal)
    }
                                        
    func removeFavorite() {
        userDefaultsManager.removeFavorite(university: college, major: majorInternal)
    }
    
    func loadSnapshots() {
        let mentionedCollegeLocations = college.branches.filter { branch in
            major.studyLocation.contains { string in
                string.rawValue.contains(branch.city)
            }
        }
        for location in mentionedCollegeLocations {
            if !mapLocations.contains(where: { $0.address == location.address }) {
                loadSnapshot(location: location)
            }
        }
    }
}

// MARK: - Private Methods

extension CollegeMajorView.Model {
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
                self.karlerror = "ModuleRef not present"
                self.viewState = .success
            }
            return
        }
        guard let url = URL(string: urlString) else {
            print("Invalid URL.")
            self.karlerror = "Invalid URL."
            return
        }

        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            
            if let httpResponse = response as? HTTPURLResponse, (200..<300).contains(httpResponse.statusCode) {
                processCurriculumData(data)
            } else if let httpResponse = response as? HTTPURLResponse {
                // This means the response was not within the 200-299 range.
                print("Invalid HTTP response: \(httpResponse.statusCode)")
                self.karlerror = "Invalid HTTP response: \(httpResponse.statusCode)"
            } else {
                print("Received non-HTTP response.")
                self.karlerror = "Received non-HTTP response."
            }
        } catch {
            print("Error fetching curriculum: \(error)")
            self.karlerror = "Error fetching curriculum: \(error)"
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
                self.major.outcomes = [decodedResponse.outcomesEt]
                if !self.tabPool.contains(.outcomes) {
                    self.tabPool.append(.outcomes)
                }
                let nonNilVersions = decodedResponse.versions.filter({ $0.admissionYear != nil })
                if let latestVersion = nonNilVersions.max(by: { $0.admissionYear! < $1.admissionYear! }) {
                    let modules = latestVersion.convertCurriculumModulesToModules()
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
            self.karlerror = "Decoding error: \(error)"
            print("Decoding error: \(error)")
            viewState = .success
        }
    }
    
    func fetchCurriculum() {
        if let models = major.modules, !models.isEmpty {
            tabPool.append(.modules)
        }
        if let outcomes = major.outcomes, !outcomes.isEmpty {
            tabPool.append(.outcomes)
        }
        guard let urlString = major.curriculumRef else {
            print("ModuleRef not present")
            return
        }
        guard let url = URL(string: urlString) else {
            print("Invalid URL.")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedResponse = try JSONDecoder().decode(Curriculum.self, from: data)
                    DispatchQueue.main.async {
                        self.major.eap = Int(decodedResponse.credits)
                        if let primaryLanguage = decodedResponse.studyLanguages.first, let language = Language(from: primaryLanguage) {
                            self.major.language = language
                        }
                        self.major.outcomes = [decodedResponse.outcomesEt]
                        if !self.tabPool.contains(.outcomes) {
                            self.tabPool.append(.outcomes)
                        }
                        let nonNilVersions = decodedResponse.versions.filter({ $0.admissionYear != nil })
                        if let latestVersion = nonNilVersions.max(by: { $0.admissionYear! < $1.admissionYear! }) {
                            let modules = latestVersion.convertCurriculumModulesToModules()
                            if modules.isEmpty {
                                self.major.modules = latestVersion.convertCurriculumOccupationalModulesToModules()
                            } else {
                                self.major.modules = modules
                            }
                            
                            if !self.tabPool.contains(.modules) {
                                self.tabPool.append(.modules)
                            }
                        }
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
    
    func loadSnapshot(location: CollegeLocation) {
        let options = MKMapSnapshotter.Options()

        options.region = MKCoordinateRegion(center: location.coordinates, latitudinalMeters: 3000, longitudinalMeters: 3000)
        options.size = CGSize(width: 400, height: 400)
        options.mapType = .standard

        let snapshotter = MKMapSnapshotter(options: options)
        snapshotter.start { snapshot, error in
            guard let snapshot = snapshot else {
                print("Snapshot error: \(String(describing: error))")
                return
            }

            let image = snapshot.image
            let pin = Image("pin")
            let pinView = CollegeView.SnapshotPin(image: pin, color: self.college.palette.base)

            let pinImage = pinView.snapshot()

            UIGraphicsBeginImageContextWithOptions(image.size, true, image.scale)
            defer { UIGraphicsEndImageContext() }
            image.draw(at: CGPoint.zero)

            let visibleRect = CGRect(origin: CGPoint.zero, size: image.size)
            let point = snapshot.point(for: location.coordinates)
            if visibleRect.contains(point) {
                let rect = CGRect(x: point.x - pinImage.size.width / 2,
                                  y: point.y - pinImage.size.height,
                                  width: pinImage.size.width,
                                  height: pinImage.size.height)
                pinImage.draw(in: rect)
            }

            guard let finalImage = UIGraphicsGetImageFromCurrentImageContext() else { return }
            let mapLocation: MapLocation = .init(
                address: location.address,
                appleMapLink: location.appleMapLink,
                snapshot: finalImage
            )

            DispatchQueue.main.async {
                self.mapLocations.append(mapLocation)
            }
        }
    }
    
    func updateIsFavorite() {
        isFavorite = userDefaultsManager.isFavorite(university: college, major: majorInternal)
    }
}

// MARK: - Objects

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
    
    struct MapLocation: Hashable {
        let address: String
        let appleMapLink: String
        let snapshot: UIImage
    }
    
    struct Curriculum: Codable {
        var outcomesEt: String
        let outcomesEn: String?
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
            self.credits = try container.decode(Double.self, forKey: .credits)
            self.studyLanguages = try container.decode([String].self, forKey: .studyLanguages)
            self.versions = try container.decode([CurriculumVersion].self, forKey: .versions)
        }
    }
    
    struct CurriculumVersion: Codable {
        let admissionYear: Int?
        let modules: [CurriculumModule]
        let occupationModules: [CurriculumOccupationalModule]
        
        func convertCurriculumModulesToModules() -> [Module] {
            var newModules: [Module] = []
            modules.forEach { module in
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
        let credits: Double
    }
    
    struct CurriculumSubjectSubject: Codable {
        let nameEt: String
        let nameEn: String
        let credits: Double
    }
    
    enum ViewState {
        case loading
        case success
    }
}
