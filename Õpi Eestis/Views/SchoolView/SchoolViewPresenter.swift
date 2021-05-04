import Foundation
import SwiftUI
import Combine

class SchoolViewPresenter: ObservableObject {
    struct LevelStats {
        var bachelor: StatEntity
        var master: StatEntity
        var doctor: StatEntity
        var applied: StatEntity
        var kutse: StatEntity
    }
    struct StatEntity: Identifiable {
        var id = UUID()
        
        var name: String
        var level: Int
        var color: Color
        var percentage: CGFloat
        var value: CGFloat
    }
    
    let size = SizeObject()
    @Published var majors = [StatEntity]()
    @Published var descriptionIsShown = false
    @Published var navigationSelectionTag: Int? = 0
    
    func getLevelStats(school: School) -> [StatEntity] {
        var levels: [StatEntity] = [StatEntity]()
        let majorCount = school.education.count
        let levelStats: LevelStats
        let bachelor = school.education.filter{$0.level.rawValue == "bakalaureus" }.count
        let master = school.education.filter{$0.level.rawValue == "magister" }.count
        let intergrated = school.education.filter{$0.level.rawValue == "integreeritud õpe" }.count
        let doctor = school.education.filter{$0.level.rawValue == "doktor" }.count
        let kutse = school.education.filter{$0.level.rawValue == "kutseharidus" }.count
        let applied = school.education.filter{$0.level.rawValue == "rakenduskõrgharidus" }.count
        
        let bachelorPercent: CGFloat = CGFloat(CGFloat(bachelor * 100) / CGFloat(majorCount))
        let masterPercent: CGFloat = CGFloat(CGFloat((master + intergrated) * 100) / CGFloat(majorCount))
        let doctorPercent: CGFloat = CGFloat(CGFloat(doctor * 100) / CGFloat(majorCount))
        let appliedPercent: CGFloat = CGFloat(CGFloat(applied * 100) / CGFloat(majorCount))
        let kutsePercent: CGFloat = CGFloat(CGFloat(kutse * 100) / CGFloat(majorCount))
        
        levelStats = LevelStats(
            bachelor: StatEntity(name: "Bakalaureus", level: bachelor, color: Color.purple.opacity(0.7), percentage: bachelorPercent, value: 0),
            master: StatEntity(name: "Magister", level: master + intergrated, color: Color.green.opacity(0.7), percentage: masterPercent, value: 0),
            doctor: StatEntity(name: "Doktor", level: doctor, color: Color.black.opacity(0.7), percentage: doctorPercent, value: 0),
            applied: StatEntity(name: "Rakenduskõrgharidus", level: applied, color: Color.blue.opacity(0.7), percentage: appliedPercent, value: 0),
            kutse: StatEntity(name: "Kutseharidus", level: kutse, color: Color.yellow.opacity(0.7), percentage: kutsePercent, value: 0)
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
    
    func toSocialMedia(socialMedia: SocialMedia) {
        if socialMedia.website == "Facebook" {
            let appURL = NSURL(string: "fb://profile/\(socialMedia.link)")!
            UIApplication.shared.open(appURL as URL)
        } else {
            guard let url = URL(string: socialMedia.link as String) else { return }
            UIApplication.shared.open(url)
        }
    }
    
    func calc() {
        var value : CGFloat = 0
            
        for i in 0..<majors.count {
            value += majors[i].percentage
            majors[i].value = value
        }
    }
    
    func toAbout() { descriptionIsShown.toggle() }
}
