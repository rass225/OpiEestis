import SwiftUI
import MessageUI
import MapKit

extension CollegeView {
    class Model: ObservableObject {
        @Published var isSmallImageShown: Bool
        @Published var isMailOpen: Bool
        @Published var majors: [Major]
        @Published var majorStats: [StatEntity]
        @Published var mailResult: Result<MFMailComposeResult, Error>?
        @Published var imageCache: [URL: UIImage] = [:]
        @Published var mapState: MapState
        @Published var isMapViewPresented: Bool
        @Published var standardMapSnapshot: UIImage
        @Published var webLink: WebLink?
        
        private let dependencies: DependencyManager
        
        let college: College

        init(
            college: College,
            dependencies: DependencyManager = .shared,
            isSmallImageShown: Bool = false,
            standardMapSnapshot: UIImage = UIImage(),
            mapState: MapState = .hybrid,
            isMailOpen: Bool = false,
            isMapViewPresented: Bool = false
        ) {
            print("✅ College View Model initialized")
            self.isSmallImageShown = isSmallImageShown
            self.isMailOpen = isMailOpen
            self.standardMapSnapshot = standardMapSnapshot
            self.majors = []
            self.majorStats = []
            self.college = college
            self.dependencies = dependencies
            self.mapState = .standard
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
        .init(college: college, region: mapBoundsRegion())
    }
    
    func majorContentPadding() -> CGFloat {
        switch majorStats.count {
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
                group.addTask { self.prefetchImages() }
                group.addTask { await self.loadEducation() }
                group.addTask { self.loadMapSnapshot() }
                for await _ in group { }
            }
        }
    }
    
    func loadMapSnapshot() {
        let mapService = MapServiceManager()
        Task {
            let standardImage = await mapService.mapSnapshot(
                with: college.branches, 
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
    
    func loadEducation() async {
        if let majors = await dependencies.network.fetchMajors(college.jsonString) {
            DispatchQueue.main.async {
                self.majors = majors
                let levelStats = self.getLevelStats()
                self.majorStats = levelStats
            }
        }
    }
    
    func prefetchImages() {
        let urls = college.imageRefs.compactMap { URL(string: $0) }

        Task {
            let fetchedImages = await dependencies.network.fetchImages(urls: urls)
            let nonNilImages = fetchedImages.compactMapValues { $0 }
            DispatchQueue.main.async {
                self.imageCache.merge(nonNilImages) { (_, new) in new }
            }
        }
    }
}

private extension CollegeView.Model {
    func getLevelStats() -> [StatEntity] {
        var levels: [StatEntity] = []
        
        let counts = levelCount(majors: majors)
        let percentages = percentace(levelCounts: counts, total: majors.count)
        
        let levelStats: [(Level, Color, Int, CGFloat)] = [
            (.bachelor, college.palette.bachelors, counts.bachelor, percentages.bachelor),
            (.masters, college.palette.masters, counts.master, percentages.master),
            (.doctor, college.palette.doctors, counts.doctor, percentages.doctor),
            (.applied, college.palette.applied, counts.applied, percentages.applied),
            (.vocational, college.palette.vocational, counts.kutse, percentages.kutse)
        ]
        
        var value: CGFloat = 0
        for levelStat in levelStats {
            let (level, color, count, percentage) = levelStat
            if percentage > 0 {
                value += percentage
                levels.append(StatEntity(name: level, count: count, color: color, percentage: percentage, value: value))
            }
        }
        
        return levels
    }
    
    func levelCount(majors: [Major]) -> LevelStats {
        let counts = majors.reduce(into: LevelStats(bachelor: 0, master: 0, doctor: 0, applied: 0, kutse: 0)) { counts, major in
            switch major.level {
            case .bachelor: counts.bachelor += 1
            case .masters, .integrated: counts.master += 1
            case .doctor: counts.doctor += 1
            case .applied: counts.applied += 1
            case .vocational: counts.kutse += 1
            case .all: break
            }
        }
        return counts
    }
    
    func percentace(levelCounts: LevelStats, total: Int) -> LevelPercents {
        let totalCGF = CGFloat(total)
        return LevelPercents(
            bachelor: CGFloat(levelCounts.bachelor) * 100 / totalCGF,
            master: CGFloat(levelCounts.master) * 100 / totalCGF,
            doctor: CGFloat(levelCounts.doctor) * 100 / totalCGF,
            applied: CGFloat(levelCounts.applied) * 100 / totalCGF,
            kutse: CGFloat(levelCounts.kutse) * 100 / totalCGF
        )
    }
    
    func mapBoundsRegion() -> MKCoordinateRegion {
        let padding: Double = 0.3
        var minLatitude: Double = 90.0
        var maxLatitude: Double = -90.0
        var minLongitude: Double = 180.0
        var maxLongitude: Double = -180.0
        
        let locations = college.branches.map(\.coordinates)

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
            let latitudeDelta = (maxLatitude - minLatitude) * (1.25 + padding)
            let longitudeDelta = (maxLongitude - minLongitude) * (1.0 + padding)
            
            let span = MKCoordinateSpan(
                latitudeDelta: latitudeDelta,
                longitudeDelta: longitudeDelta
            )
            return MKCoordinateRegion(center: center, span: span)
        }
    }
}

extension CollegeView.Model {
    struct LevelData {
        var bachelor: StatEntity
        var master: StatEntity
        var doctor: StatEntity
        var applied: StatEntity
        var kutse: StatEntity
    }
    struct StatEntity: Identifiable, Hashable {
        var id = UUID()
        var name: Level
        var count: Int
        var color: Color
        var percentage: CGFloat
        var value: CGFloat
    }
    struct LevelStats {
        var bachelor: Int
        var master: Int
        var doctor: Int
        var applied: Int
        var kutse: Int
    }
    struct LevelPercents {
        var bachelor: CGFloat
        var master: CGFloat
        var doctor: CGFloat
        var applied: CGFloat
        var kutse: CGFloat
    }
    
    struct WebLink: Identifiable {
        var id = UUID()
        var link: String
    }
    
    enum MapState {
        case standard
        case hybrid
    }
}
