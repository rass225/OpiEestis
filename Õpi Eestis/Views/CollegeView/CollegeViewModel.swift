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
        
        private let dependencies: DependencyManager
        private var standardMapSnapshot: UIImage
        private var hybridMapSnapshot: UIImage
        let college: College
        
        var bigMap: UIImage {
            switch mapState {
            case .hybrid: return hybridMapSnapshot
            case .standard: return standardMapSnapshot
            }
        }
        
        var smallMap: UIImage {
            switch mapState {
            case .hybrid: return standardMapSnapshot
            case .standard: return hybridMapSnapshot
            }
        }
        
        init(
            college: College,
            dependencies: DependencyManager = .shared,
            isSmallImageShown: Bool = false,
            standardMapSnapshot: UIImage = UIImage(),
            hybridMapSnapshot: UIImage = UIImage(),
            mapState: MapState = .hybrid,
            isMailOpen: Bool = false
            
        ) {
            print("✅ College View Model initialized")
            self.isSmallImageShown = isSmallImageShown
            self.isMailOpen = isMailOpen
            self.standardMapSnapshot = standardMapSnapshot
            self.hybridMapSnapshot = hybridMapSnapshot
            self.majors = []
            self.majorStats = []
            self.college = college
            self.dependencies = dependencies
            self.mapState = .standard
            
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
    
    func openMap() {
        dependencies.network.openLink(with: college.location.appleMapLink)
    }
    
    func openLink(_ url: URL) {
        dependencies.network.openLink(with: url)
    }
    
    func flipMap() {
        switch mapState {
        case .hybrid: mapState = .standard
        case .standard: mapState = .hybrid
        }
    }
}

extension CollegeView.Model {
    func loadMapSnapshot() {
        let mapService = MapServiceManager()
        Task {
            let standardImage = await mapService.loadSnapshots(
                for: college.location.coordinates,
                mapType: .standard
            )
//            let satelliteImage = await mapService.loadSnapshots(
//                for: college.location.coordinates,
//                mapType: .hybridFlyover
//            )
            if let standardImage {
                DispatchQueue.main.async {
                    self.standardMapSnapshot = standardImage
//                    self.hybridMapSnapshot = satelliteImage
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
    
    enum MapState {
        case standard
        case hybrid
    }
}
