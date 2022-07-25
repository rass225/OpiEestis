import SwiftUI
import Foundation

struct SchoolStatistic: View {
    
    enum LabelType {
        case student
        case location
        case foreigners(toggle: Bool)
    }
    
    let school: School
    let image: Image
    var topText: String = ""
    var bottomText: String = ""
    
    init(label: LabelType, school: School, majors: [majorsMinors]) {
        self.school = school
        switch label {
        case .student:
            image = .person2Fill
            topText = school.students != 0 ? "\(school.students)" : OEAppearance.Locale.none
            bottomText = OEAppearance.Locale.students
        case .location:
            image = .mappinCircleFill
            topText = getLocationCount(majors: majors)
            bottomText = OEAppearance.Locale.cities
        case .foreigners(let toggle):
            image = .personFill
            var foreigners: String
            switch school.name {
            case .ebs:
                foreigners = toggle ? "\( school.foreignStudentsCount())%": OEAppearance.Locale.ebsForeignStudents
            default:
                foreigners = toggle ? "\( school.foreignStudentsCount())%": "\(school.internationalStudents)"
            }
            topText = foreigners
            bottomText = OEAppearance.Locale.foreignStudents1
        }
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 5){
            image
                .foregroundColor(school.color)
                .font(.callout)
            VStack(alignment: .leading, spacing: 0){
                Text(topText)
                    .font(.semiBoldBody)
                    .foregroundColor(.black)
                Text(bottomText)
                    .padding(.top, -3)
                    .foregroundColor(.darkGray)
                    .font(.regularCaption)
            }
        }
    }
    
    func getLocationCount(majors: [majorsMinors]) -> String {
        let studyLocations = majors.map{ ($0.studyLocation) }
        var differentStudyLocations: [String] = []
        for major in studyLocations {
            for item in major {
                differentStudyLocations.append(item.rawValue)
            }
        }
        var count: [String: Int] = [:]
        differentStudyLocations.forEach { count[$0, default: 0] += 1 }
        
        return "\(count.count)"
    }
}
