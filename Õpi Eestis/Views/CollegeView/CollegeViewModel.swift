import SwiftUI
import MessageUI
import MapKit

extension CollegeView {
    class Model: ObservableObject {
        @Published var isSmallImageShown: Bool
        @Published var isMailOpen: Bool
        @Published var mapSnapshot: UIImage
        @Published var majors: [Major]
        @Published var majorStats: [StatEntity]
        @Published var mailResult: Result<MFMailComposeResult, Error>?
        
        private let dependencies: DependencyManager
        
        let college: College
        let mockImages: [String]
        
        init(
            college: College,
            dependencies: DependencyManager = .shared,
            isSmallImageShown: Bool = false,
            mapSnapshot: UIImage = UIImage(),
            isMailOpen: Bool = false
            
        ) {
            self.isSmallImageShown = isSmallImageShown
            self.isMailOpen = isMailOpen
            self.mapSnapshot = mapSnapshot
            self.majors = []
            self.majorStats = []
            self.college = college
            self.dependencies = dependencies
            self.mockImages = ["TaTeKõpicture", "TaTKimage", "TTKimage"]
        }
    }
}

extension CollegeView.Model {
    func openHomePage() {
        if let validLink = URL(string: college.website) {
            UIApplication.shared.open(validLink)
        }
    }
    
    func callCollege() {
        let baseUrl = OEAppearance.Locale.network.telHttps
        let phoneNr = college.contact.phoneNumber
        let urlString = baseUrl + phoneNr
        if let validLink = URL(string: urlString) {
            UIApplication.shared.open(validLink)
        }
    }
    
    func openEmail() {
        isMailOpen.toggle()
    }
    
    func openMap() {
        if let validLink = URL(string: college.location.appleMapLink) {
            UIApplication.shared.open(validLink)
        }
    }
    
    func openLink(_ url: URL) {
        UIApplication.shared.open(url)
    }
}

extension CollegeView.Model {
    func loadSnapshot() async {
        let options = MKMapSnapshotter.Options()
        options.region = MKCoordinateRegion(
            center: college.location.coordinates,
            latitudinalMeters: 3000,
            longitudinalMeters: 3000
        )
        options.size = CGSize(width: 400, height: 400)
        options.mapType = .standard
        
        do {
            let snapshotter = MKMapSnapshotter(options: options)
            let snapshot = try await snapshotter.snapshot()
            let image = snapshot.image
            defer { UIGraphicsEndImageContext() }
            
            UIGraphicsBeginImageContextWithOptions(image.size, true, image.scale)
            image.draw(at: CGPoint.zero)
            
            if let finalImage = UIGraphicsGetImageFromCurrentImageContext() {
                DispatchQueue.main.async {
                    self.mapSnapshot = finalImage
                }
            }
        } catch {
            print("Snapshot error: \(error)")
        }
    }
    
    func loadEducation() async {
        if let majors = await loadJson(college.jsonString) {
            DispatchQueue.main.async {
                self.majors = majors
                let levelStats = self.getLevelStats()
                self.majorStats = levelStats
            }
        }
    }
}

private extension CollegeView.Model {
    func loadJson(_ filename: String) async -> [Major]? {
        if let url = Bundle.main.url(forResource: filename, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Major].self, from: data)
                return jsonData
            } catch {
                print("Error loading file:", error)
            }
        } else {
            print("Error loading file:", filename)
        }
        return nil
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
}
