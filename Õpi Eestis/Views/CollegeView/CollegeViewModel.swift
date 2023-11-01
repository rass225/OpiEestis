import SwiftUI
import MessageUI
import MapKit

extension CollegeView {
    class Model: ObservableObject {
        @Published var isSmallImageShown: Bool
        @Published var isMailOpen: Bool
        @Published var majors: [NewMajor]
        @Published var majorsLevelCounts: LevelCounts
        @Published var mailResult: Result<MFMailComposeResult, Error>?
        @Published var imageCache: [URL: UIImage] = [:]
        @Published var isMapViewPresented: Bool
        @Published var mapSnapshot: UIImage
        @Published var webLink: WebLink?
        
        private let dependencies: DependencyManager
        
        let college: College

        init(
            college: College,
            dependencies: DependencyManager = .shared,
            isSmallImageShown: Bool = false,
            mapSnapshot: UIImage = UIImage(),
            isMailOpen: Bool = false,
            isMapViewPresented: Bool = false
        ) {
            print("✅ College View Model initialized")
            self.isSmallImageShown = isSmallImageShown
            self.isMailOpen = isMailOpen
            self.mapSnapshot = mapSnapshot
            self.majors = []
            self.majorsLevelCounts = .init()
            self.college = college
            self.dependencies = dependencies
            self.isMapViewPresented = isMapViewPresented
            start()
        }
        
        deinit {
            print("✅ College View Model deinitialized")
        }
    }
}

extension CollegeView.Model {
    func openHomePage() {
        dependencies.network.openLink(with: college.website)
    }
    
    func callCollege() {
        dependencies.network.callNumber(with: college.contact.phoneNumber)
    }
    
    func openEmail() {
        dependencies.network.openMail(with: college.contact.email)
    }
    
    func openLink(_ url: URL) {
        dependencies.network.openLink(with: url)
    }
    
    func presentMapView() {
        isMapViewPresented.toggle()
    }
    
    func createCollegeMapViewModel() -> CollegeMapView.Model {
        let coordinates = college.locationCoordinates
        let region = dependencies.mapService.getRegion(locations: coordinates)
        return .init(college: college, region: region)
    }
    
    func majorContentPadding() -> CGFloat {
        switch majorsLevelCounts.nonZeroCounts {
        case 1: return 16
        case 2: return 8
        default: return 0
        }
    }
}

private extension CollegeView.Model {
    func start() {
        Task {
            await withTaskGroup(of: Void.self) { group in
                group.addTask { await self.prefetchImages() }
                group.addTask { await self.loadEducation() }
                group.addTask { await self.loadMapSnapshot() }
                for await _ in group { }
            }
        }
    }
    
    func loadMapSnapshot() async {
        let coordinates = college.locationCoordinates
        let mapRegion = dependencies.mapService.getRegion(locations: coordinates)
        let standardImage = await dependencies.mapService.mapSnapshot(
            with: college.branches,
            coordinateRegion: mapRegion,
            baseColor: college.palette.base,
            secondaryColor: college.palette.secondary
        )
        if let standardImage {
            DispatchQueue.main.async {
                self.mapSnapshot = standardImage
            }
        }
    }
    
    func loadEducation() async {
        do {
            let majors = try await dependencies.network.fetchMajors(schoolId: college.id)
            let majorsLevelCounts = majors.countByLevel()
            DispatchQueue.main.async {
                self.majors = majors
                self.majorsLevelCounts = majorsLevelCounts
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func prefetchImages() async {
        let urls = college.imageRefs.compactMap { URL(string: $0) }
        let fetchedImages = await dependencies.network.fetchImages(urls: urls)
        let nonNilImages = fetchedImages.compactMapValues { $0 }
        DispatchQueue.main.async {
            self.imageCache.merge(nonNilImages) { (_, new) in new }
        }
    }
}

extension CollegeView.Model {
    struct WebLink: Identifiable {
        var id = UUID()
        var link: String
    }
}

struct LevelCounts {
    var vocational: Int = 0
    var applied: Int = 0
    var bachelor: Int = 0
    var integrated: Int = 0
    var masters: Int = 0
    var doctor: Int = 0
    
    var nonZeroCounts: Int {
        [vocational, applied, bachelor, integrated, masters, doctor]
            .filter { $0 > 0 }
            .count
    }
}
