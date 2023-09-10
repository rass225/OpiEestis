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
        @Published var imageCache: [URL: UIImage] = [:]
        
        @Published var oisCourses: [OisDetailedCourse] = []
        
        let college: College
        
        private let majorInternal: Major
        private var cancellables = Set<AnyCancellable>()
        private let dependencies: DependencyManager
        
        init(
            major: Major,
            college: College,
            isFavorite: Bool = false,
            tabSelection: Tabs = .overview,
            dependencies: DependencyManager = .shared
        ) {
            print("✅ College Major View Model initialized")
            self.major = major
            self.majorInternal = major
            self.college = college
            self.tabSelection = tabSelection
            self.isFavorite = isFavorite
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
            
            
        }
        
        deinit {
            print("Major View Model deinitialized")
        }
    }
}

extension CollegeMajorView.Model {
    func openWebsite() {
        dependencies.network.openLink(with: major.majorWebsite)
    }
    
    func openPhone(_ urlString: String) {
        dependencies.network.callNumber(with: urlString)
    }
    
    func openMail(_ urlString: String) {
        dependencies.network.openMail(with: urlString)
    }
    
    func openMap(_ link: String) {
        dependencies.network.openLink(with: link)
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
                loadMapSnapshot(location: location)
            }
        }
    }
    
    func start() {
        Task {
            await withTaskGroup(of: Void.self) { group in
                group.addTask { await self.fetchCurriculum2() }
                group.addTask { self.prefetchImages() }
                group.addTask { await self.loadSnapshots() }
                for await _ in group { }
            }
        }
    }
}

// MARK: - Private Methods

private extension CollegeMajorView.Model {
    func loadMapSnapshot(location: CollegeLocation) {
        let mapService = MapServiceManager()

        Task {
            if let mapLocation = await mapService.fetchMapSnapshot(for: location) {
                DispatchQueue.main.async {
                    self.mapLocations.append(mapLocation)
                }
            }
        }
    }
    
    func updateIsFavorite() {
        let isFavorite = dependencies.userDefaults.isFavorite(university: college, major: majorInternal)
        DispatchQueue.main.async {
            self.isFavorite = isFavorite
        }
    }
    
    func observeUserDefaults() {
        NotificationCenter.default.publisher(for: UserDefaults.didChangeNotification)
            .sink { [weak self] _ in
                self?.updateIsFavorite()
            }
            .store(in: &cancellables)
    }
    
    func prefetchImages() {
        let networkManager = NetworkManager()
        let urls = major.personnel?.compactMap { person -> URL? in
            if let photoURL = person.photo {
                return URL(string: photoURL)
            }
            return nil
        } ?? []

        Task {
            let fetchedImages = await networkManager.fetchImages(urls: urls)
            let nonNilImages = fetchedImages.compactMapValues { $0 }
            DispatchQueue.main.async {
                self.imageCache.merge(nonNilImages) { (_, new) in new }
            }
        }
    }
    
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
        if urlString.contains("https://ois2") {
            do {
                print("\(urlString) is being fetched")
                let coreData = try await dependencies.network.fetchCurriculumData(from: urlString)
                let modulesUrlString = urlString + "/versions/latest"
                print("\(modulesUrlString) is being fetched")
                let modulesData = try await dependencies.network.fetchCurriculumData(from: modulesUrlString)
                processOisData(coreData: coreData, modulesData: modulesData)
            } catch {
                print("Error fetching curriculum: \(error)")
            }
        } else {
            do {
                let data = try await dependencies.network.fetchCurriculumData(from: urlString)
                processCurriculumData(data)
            } catch {
                print("Error fetching curriculum: \(error)")
            }
        }
        
    }
    
    func processCurriculumData(_ data: Data) {
        do {
            let decodedResponse = try JSONDecoder().decode(TahvelCurriculum.self, from: data)
            
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
    
    func processOisData(coreData: Data, modulesData: Data) {
        do {
            let decoder = JSONDecoder()
            let coreDataResponse = try decoder.decode(OisCurriculum.self, from: coreData)
            let modulesDataResponse = try decoder.decode(OisVersion.self, from: modulesData)
            
            self.fetchOisCourses(blocks: modulesDataResponse.modules.blocks)
            // Update UI on the main thread
            DispatchQueue.main.async {
                self.major.eap = Int(coreDataResponse.credits)
                if let primaryLanguage = coreDataResponse.general.inputLanguages.first, let language =  Language(from: primaryLanguage.et) {
                    self.major.language = language
                }
                if let isEnglishOnly = self.major.isEnglishOnly, isEnglishOnly == true {
                    let outcomeStrings = coreDataResponse.overview.learningOutcomes.map(\.en)
                    self.major.outcomes = outcomeStrings
                } else {
                    let outcomeStrings = coreDataResponse.overview.learningOutcomes.map(\.et)
                    self.major.outcomes = outcomeStrings
                }

                if !self.tabPool.contains(.outcomes) {
                    self.tabPool.append(.outcomes)
                }
                
                self.viewState = .success

            }
        } catch {
            DispatchQueue.main.async {
                print("Decoding error: \(error)")
                self.viewState = .success
            }
        }
    }
    
    func fetchOisCourses(blocks: [OisBlock]) {
        let uuids = convertBlockToUuids(blocks)
        
        Task {
            do {
                let coursesData = try await dependencies.network.fetchOisCourses(with: uuids)
                let courseResponse = try JSONDecoder().decode([OisDetailedCourse].self, from: coursesData)
                let convertedModules = convertOisDataToModule(blocks: blocks, detailedCourses: courseResponse)
                DispatchQueue.main.async {
                    self.major.modules = convertedModules.unique.sorted(by: \.name)
                    if !self.tabPool.contains(.modules) {
                        self.tabPool.append(.modules)
                    }
                }
            } catch {
                print("Error getting ois courses")
            }
        }
    }
    
    func convertBlockToUuids(_ blocks: [OisBlock]) -> [String] {
        let courseIds = blocks
            .flatMap(\.submodules)
            .compactMap(\.courses)
            .flatMap({ $0 })
            .map(\.mainUuid)
        
        let subCourseIds = blocks
            .flatMap(\.submodules)
            .compactMap(\.submodules)
            .flatMap { $0 }
            .compactMap(\.courses)
            .flatMap { $0 }
            .map(\.mainUuid)
        
        let allCourseIds = courseIds + subCourseIds
        return allCourseIds
    }
    
    func convertOisDataToModule(blocks: [OisBlock], detailedCourses: [OisDetailedCourse]) -> [Module] {
        var modules: [Module] = []

        for block in blocks {
            for oisSubmodule in block.submodules {
                let courses = oisSubmodule.courses?
                    .compactMap { convertOisCourseToCourse($0, detailedCourses: detailedCourses) }
                    .sorted(by: \.name) ?? []
                let subModules = oisSubmodule.submodules?
                    .compactMap { convertOisSubsubmoduleToSubmodule($0, detailedCourses: detailedCourses) }
                    .sorted(by: \.name)

                if courses.isEmpty && subModules == nil {
                    let singleCourse = Course(
                        name: oisSubmodule.title.et,
                        eapCount: oisSubmodule.credits
                    )
                    let module = Module(
                        name: oisSubmodule.title.et,
                        courses: [singleCourse],
                        submodules: nil
                    )
                    modules.append(module)
                } else {
                    let module = Module(
                        name: oisSubmodule.title.et,
                        courses: courses,
                        submodules: subModules
                    )
                    modules.append(module)
                }
            }
        }

        return modules
    }
    
    func convertOisCourseToCourse(
        _ oisCourse: OisCourse,
        detailedCourses: [OisDetailedCourse]
    ) -> Course? {
        guard let detail = detailedCourses.first(where: { $0.uuid == oisCourse.mainUuid }) else { return nil }
        return Course(
            name: detail.title.et,
            eapCount: detail.credits
        )
    }

    func convertOisSubsubmoduleToSubmodule(
        _ oisSubsubmodule: OisSubSubmodule,
        detailedCourses: [OisDetailedCourse]
    ) -> Submodule? {
        let subsubmoduleCourses = oisSubsubmodule.courses?
            .compactMap { convertOisCourseToCourse($0, detailedCourses: detailedCourses) }
            .sorted(by: \.name) ?? []

        if subsubmoduleCourses.isEmpty {
            let singleCourse = Course(
                name: oisSubsubmodule.title.et,
                eapCount: oisSubsubmodule.credits
            )
            return Submodule(
                name: oisSubsubmodule.title.et,
                courses: [singleCourse],
                submodules: nil
            )
        } else {
            return Submodule(
                name: oisSubsubmodule.title.et,
                courses: subsubmoduleCourses,
                submodules: nil
            )
        }
    }
}
