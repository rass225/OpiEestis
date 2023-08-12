import SwiftUI
import MessageUI
import MapKit

extension CollegeView {
    class Model: ObservableObject {
        let college: College
        let dependencies: DependencyManager
        let mockImages = ["TaTeKõpicture", "TaTKimage", "TTKimage"]
        @Published var contactSheetIsOpen: Bool
        @Published var foreignStudentsToggle: Bool = false
        @Published var isSmallImageShown: Bool = false
        @Published var mapSnapshot: UIImage = UIImage()
        @Published var isMailOpen: Bool = false
        @Published var majors: [majorsMinors] = []
        @Published var majorStats: [StatEntity] = []
        @Published var mailResult: Result<MFMailComposeResult, Error>? = nil
        
        init(
            college: College,
            contactSheetIsOpen: Bool = false,
            dependencies: DependencyManager = .shared
            
        ) {
            self.college = college
            self.contactSheetIsOpen = contactSheetIsOpen
            self.dependencies = dependencies
            loadEducation()
            loadSnapshot()
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
}

private extension CollegeView.Model {
    func loadSnapshot() {
        let options = MKMapSnapshotter.Options()
        options.region = MKCoordinateRegion(center: self.college.location.coordinates, latitudinalMeters: 3000, longitudinalMeters: 3000)
        options.size = CGSize(width: 400, height: 400)
        options.mapType = .mutedStandard
        
        let snapshotter = MKMapSnapshotter(options: options)
        snapshotter.start { snapshot, error in
            guard let snapshot = snapshot else {
                print("Snapshot error: \(String(describing: error))")
                return
            }
            
            let image = snapshot.image
            let pin = Image("pin")
            let pinView = CollegeView.SnapshotPin(image: pin, color: self.college.palette.base)
                
            let pinImage = pinView.snapshot() // Convert your custom SwiftUI view into UIImage
            
            UIGraphicsBeginImageContextWithOptions(image.size, true, image.scale)
            defer { UIGraphicsEndImageContext() }
            image.draw(at: CGPoint.zero)
            
            let visibleRect = CGRect(origin: CGPoint.zero, size: image.size)
            let point = snapshot.point(for: self.college.location.coordinates)
            if visibleRect.contains(point) {
                let rect = CGRect(x: point.x - pinImage.size.width / 2,
                                  y: point.y - pinImage.size.height,
                                  width: pinImage.size.width,
                                  height: pinImage.size.height)
                pinImage.draw(in: rect)
            }
            
            guard let finalImage = UIGraphicsGetImageFromCurrentImageContext() else { return }
            
            DispatchQueue.main.async {
                self.mapSnapshot = finalImage
            }
        }
    }
    
    func loadJson(_ filename: String) -> [majorsMinors]? {
        if let url = Bundle.main.url(forResource: filename, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([majorsMinors].self, from: data)
                return jsonData
            } catch {
                print("error:\(error)")
            }
        } else {
            print(filename, "XXX----XXX---XXX---XXX")
        }
        return nil
    }
    
    func loadEducation() {
        if let majors = loadJson(college.jsonString) {
            self.majors = majors
            self.majorStats = getLevelStats()
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
        var name: levelchoice
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
    
    func getLevelStats() -> [StatEntity] {
        var levels: [StatEntity] = [StatEntity]()
        let levelStats: LevelData
        
        let counts = levelCount(majors: majors)
        let percentages = percentace(levelCounts: counts, total: majors.count)
        
        
        levelStats = LevelData(
            bachelor: StatEntity(
                name: .bachelor,
                count: counts.bachelor,
                color: college.palette.bachelors,
                percentage: percentages.bachelor,
                value: 0
            ),
            master: StatEntity(
                name: .masters,
                count: counts.master,
                color: college.palette.masters,
                percentage: percentages.master,
                value: 0
            ),
            doctor: StatEntity(
                name: .doctor,
                count: counts.doctor,
                color:  college.palette.doctors,
                percentage: percentages.doctor,
                value: 0
            ),
            applied: StatEntity(
                name: .applied,
                count: counts.applied,
                color:  college.palette.applied,
                percentage: percentages.applied,
                value: 0
            ),
            kutse: StatEntity(
                name: .kutseharidus,
                count: counts.kutse,
                color: college.palette.vocational,
                percentage: percentages.kutse,
                value: 0
            )
        )
        
        if levelStats.applied.percentage > 0 {
            levels.append(levelStats.applied)
        }
        if levelStats.kutse.percentage > 0 {
            levels.append(levelStats.kutse)
        }
        if levelStats.bachelor.percentage > 0 {
            levels.append(levelStats.bachelor)
        }
        if levelStats.master.percentage > 0 {
            levels.append(levelStats.master)
        }
        if levelStats.doctor.percentage > 0 {
            levels.append(levelStats.doctor)
        }
        
        var value : CGFloat = 0
        
        for i in 0..<levels.count {
            value += levels[i].percentage
            levels[i].value = value
        }
        
        return levels
    }
    func levelCount(majors: [majorsMinors]) -> LevelStats {
        let bachelor = majors
            .filter{$0.level == .bachelor }
            .count
        let master = majors
            .filter{$0.level == .masters }
            .count
        let intergrated = majors
            .filter{$0.level == .integrated }
            .count
        let doctor = majors
            .filter{$0.level == .doctor }
            .count
        let kutse = majors
            .filter{$0.level == .kutseharidus }
            .count
        let applied = majors
            .filter{$0.level == .applied }
            .count
        
        return LevelStats(
            bachelor: bachelor,
            master: master + intergrated,
            doctor: doctor,
            applied: applied,
            kutse: kutse
        )
    }
    
    func percentace(levelCounts: LevelStats, total: Int) -> LevelPercents {
        let bachelor: CGFloat = CGFloat(levelCounts.bachelor) * 100 / CGFloat(majors.count)
        let master: CGFloat = CGFloat(levelCounts.master) * 100 / CGFloat(majors.count)
        let doctor: CGFloat = CGFloat(levelCounts.doctor) * 100 / CGFloat(majors.count)
        let applied: CGFloat = CGFloat(levelCounts.applied) * 100 / CGFloat(majors.count)
        let kutse: CGFloat = CGFloat(levelCounts.kutse) * 100 / CGFloat(majors.count)
        return LevelPercents(bachelor: bachelor, master: master, doctor: doctor, applied: applied, kutse: kutse)
    }
}
