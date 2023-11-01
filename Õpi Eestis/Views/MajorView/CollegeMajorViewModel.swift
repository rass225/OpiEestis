import SwiftUI
import Combine
import MapKit


extension CollegeMajorView {
    class Model: ObservableObject {
        @Published var major: Major
        @Published var tabSelection: Tabs
        @Published var isFavorite: Bool
        @Published var mapLocations: [MapLocation]
        @Published var viewState: ViewState
        @Published var imageCache: [URL: UIImage] = [:]
        @Published var didLoad = false
        @Published var oisCourses: [OisDetailedCourse] = []
        @Published var standardMapSnapshot: UIImage
        @Published var isMapViewPresented: Bool
        @Published var selectedPersonnel: Personnel?
        
        let college: College
        
        private let majorInternal: Major
        private var cancellables = Set<AnyCancellable>()
        private let dependencies: DependencyManager
        
        init(
            major: Major,
            college: College,
            isFavorite: Bool = false,
            tabSelection: Tabs = .overview,
            dependencies: DependencyManager = .shared,
            standardMapSnapshot: UIImage = UIImage()
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
            self.standardMapSnapshot = standardMapSnapshot
            self.isMapViewPresented = false
            observeUserDefaults()
        }
        
        deinit {
            print("Major View Model deinitialized")
        }
        
        var availableTabs: [Tabs] {
            var tabs: [Tabs] = []
            tabs.append(.overview)
            
            if !major.requirements.isEmpty {
                tabs.append(.requirements)
            }
            
            if let personnel = major.personnel, !personnel.isEmpty {
                tabs.append(.personnel)
            }
            
            if let outcomes = major.outcomes, !outcomes.isEmpty {
                tabs.append(.outcomes)
            }
            
            if let modules = major.modules, !modules.isEmpty {
                tabs.append(.modules)
            }
            return tabs
        }
        
        var hasValidCurriculumRef: Bool {
            return major.curriculumRef != nil
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
    
    func presentMapView() {
        isMapViewPresented.toggle()
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
    
    func loadMapSnapshot() {
        Task {
            let standardImage = await dependencies.mapService.mapSnapshot(
                with: availableBranches(),
                coordinateRegion: mapBoundsRegion(),
                baseColor: college.palette.base,
                secondaryColor: college.palette.secondary
            )
            if let standardImage {
                DispatchQueue.main.async {
                    self.standardMapSnapshot = standardImage
                }
            }
        }
    }
    
    func start() {
        Task {
            await withTaskGroup(of: Void.self) { group in
                group.addTask { await self.fetchCurriculum2() }
                group.addTask { self.prefetchImages() }
                group.addTask { self.loadMapSnapshot() }
                for await _ in group { }
            }
        }
    }
    
    func createCollegeMapViewModel() -> CollegeMapView.Model {
        var collegeWithFilteredLocations = college
        collegeWithFilteredLocations.branches = availableBranches()
        return .init(college: collegeWithFilteredLocations, region: mapBoundsRegion())
    }
}

// MARK: - Private Methods

private extension CollegeMajorView.Model {
    func loadMapSnapshot(location: CollegeLocation) {

        Task {
            if let mapLocation = await dependencies.mapService.fetchMapSnapshot(for: location) {
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
    
    func availableBranches() -> [CollegeLocation] {
        college.branches
            .filter {
                major.studyLocation
                    .map(\.rawValue)
                    .contains($0.city)
            }
    }
    
    func mapBoundsRegion() -> MKCoordinateRegion {
        let padding: Double = 0.3
        var minLatitude: Double = 90.0
        var maxLatitude: Double = -90.0
        var minLongitude: Double = 180.0
        var maxLongitude: Double = -180.0
        
        let locations = availableBranches().map(\.coordinates)

        for location in locations {
            let latitude = location.latitude
            let longitude = location.longitude
            minLatitude = min(minLatitude, latitude)
            maxLatitude = max(maxLatitude, latitude)
            minLongitude = min(minLongitude, longitude)
            maxLongitude = max(maxLongitude, longitude)
        }
        
        let center = CLLocationCoordinate2D(
            latitude: (minLatitude + maxLatitude) / 2,
            longitude: (minLongitude + maxLongitude) / 2
        )
        
        if locations.count == 1 {
            let span = MKCoordinateSpan(
                latitudeDelta: 0.05,
                longitudeDelta: 0.05
            )
            return MKCoordinateRegion(center: center, span: span)
        } else {
            let latitudeDelta = (maxLatitude - minLatitude) * (1.6 + padding)
            let longitudeDelta = (maxLongitude - minLongitude) * (1.0 + padding)
            
            let span = MKCoordinateSpan(
                latitudeDelta: latitudeDelta,
                longitudeDelta: longitudeDelta
            )
            return MKCoordinateRegion(center: center, span: span)
        }
    }
    
    func fetchCurriculum2() async {
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
                print("\(urlString) is being fetched")
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
                let nonNilVersions = decodedResponse.versions.filter({ $0.admissionYear != nil })
                if let latestVersion = nonNilVersions.max(by: { $0.admissionYear! < $1.admissionYear! }) {
                    if let admissionYear = latestVersion.admissionYear {
                        self.major.curriculumDate = "\(admissionYear)/\(admissionYear + 1)"
                    }
                    
                    let modules = latestVersion.convertCurriculumModulesToModules(isEnglishOnly: self.major.isEnglishOnly ?? false)
                    if modules.isEmpty {
                        self.major.modules = latestVersion.convertCurriculumOccupationalModulesToModules()
                    } else {
                        self.major.modules = modules
                    }
                    self.viewState = .success
                } else {
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
                self.major.studyType = coreDataResponse.classification.studyType.et
                self.major.curriculumDate = modulesDataResponse.general.year.et
                if let primaryLanguage = coreDataResponse.general.inputLanguages.first, let language =  Language(from: primaryLanguage.et) {
//                    self.major.language = language
                }
                if let isEnglishOnly = self.major.isEnglishOnly, isEnglishOnly == true {
                    let outcomeStrings = coreDataResponse.overview.learningOutcomes
                        .map(\.en)
                        .compactMap { $0 }
                    self.major.outcomes = outcomeStrings
                } else {
                    let outcomeStrings = coreDataResponse.overview.learningOutcomes
                        .map(\.et)
                        .compactMap { $0 }
                    self.major.outcomes = outcomeStrings
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
        return blocks.map { block -> Module in
            let submodules = block.submodules.compactMap { oisSubmodule -> Submodule in
                let courses = oisSubmodule.courses?
                    .compactMap { convertOisCourseToCourse($0, detailedCourses: detailedCourses) }
                    .sorted(by: \.name) ?? []
                
                let subSubmodules = oisSubmodule.submodules?
                    .compactMap { convertOisSubsubmoduleToSubmodule($0, detailedCourses: detailedCourses) }
                    .sorted(by: \.name)

                if courses.isEmpty && subSubmodules == nil {
                    let singleCourse = Course(
                        name: oisSubmodule.title.et.capitalizedSentence,
                        eapCount: oisSubmodule.credits
                    )
                    return Submodule(
                        name: oisSubmodule.title.et.capitalizedSentence,
                        courses: [singleCourse],
                        submodules: nil
                    )
                } else {
                    return Submodule(
                        name: oisSubmodule.title.et.capitalizedSentence,
                        courses: courses,
                        submodules: subSubmodules
                    )
                }
            }
            return Module(
                name: block.title.et.capitalizedSentence,
                courses: [],
                submodules: submodules
            )
        }
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
    ) -> SubSubmodule? {
        let subsubmoduleCourses = oisSubsubmodule.courses?
            .compactMap { convertOisCourseToCourse($0, detailedCourses: detailedCourses) }
            .sorted(by: \.name) ?? []

        let subsubsubmodules = oisSubsubmodule.submodules?
            .compactMap { convertOisSubsubsubmoduleToSubsubsubmodule($0, detailedCourses: detailedCourses) }
            .sorted(by: \.name)

        if subsubmoduleCourses.isEmpty && subsubsubmodules == nil {
            let singleCourse = Course(
                name: oisSubsubmodule.title.et.capitalizedSentence,
                eapCount: oisSubsubmodule.credits
            )
            return SubSubmodule(
                name: oisSubsubmodule.title.et.capitalizedSentence,
                courses: [singleCourse],
                submodule: []
            )
        } else {
            return SubSubmodule(
                name: oisSubsubmodule.title.et.capitalizedSentence,
                courses: subsubmoduleCourses,
                submodule: subsubsubmodules ?? []
            )
        }
    }

    func convertOisSubsubsubmoduleToSubsubsubmodule(
        _ oisSubsubsubmodule: OisSubSubSubmodule,
        detailedCourses: [OisDetailedCourse]
    ) -> SubSubSubmodule {
        let courses = oisSubsubsubmodule.courses?
            .compactMap { convertOisCourseToCourse($0, detailedCourses: detailedCourses) }
            .sorted(by: \.name) ?? []
        return SubSubSubmodule(
            name: oisSubsubsubmodule.title.et.capitalizedSentence,
            courses: courses
        )
    }
}

struct NewOutcome: Codable, Hashable {
    let description: String
}
