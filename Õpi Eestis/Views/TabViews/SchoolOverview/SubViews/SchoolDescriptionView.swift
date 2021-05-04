import SwiftUI

struct SchoolDescriptionView: View {
    let school: School
    @State var foreignStudentsToggle = false
    
    var body: some View {
        ZStack{
            VStack{
                LabelledDivider(label: school.logo).padding(.horizontal, 20)
                HStack(spacing: 10){
                    VStack{
                        Text(school.students != 0 ? "\(school.students)" : "N/A").font(.boldCallout)
                        HStack(alignment: .center, spacing: 5){
                            StatImage(image: .person3)
                            Text("Üliõpilast")
                        }
                    }.modifier(statCellModifier())
                    
                    VStack{
                        Text(school.name.contains("Business")
                                ? foreignStudentsToggle ? "\(foreignStudents())%": "42. riigist"
                                : foreignStudentsToggle ? "\(foreignStudents())%": "\(school.internationalStudents)"
                        ).font(.boldCallout)
                        HStack(alignment: .center, spacing: 5){
                            StatImage(image: .person2)
                            Text(foreignStudentsToggle ? "Välisüliõpilast" : "Välisüliõpilasi")
                                .animation(.default)
                        }
                    }.modifier(statCellModifier())
                    .onTapGesture { foreignStudentsToggle.toggle() }
                    
                    VStack{
                        Text("\(locationCount())").font(.boldCallout)
                        HStack(alignment: .center, spacing: 5){
                            StatImage(image: .mappinCircle)
                            Text("Linnas")
                        }
                    }.modifier(statCellModifier())
                }
                
                Menu(
                    contact: school.contact,
                    location: school.location,
                    website: school.website,
                    name: school.name
                )
            }.padding(.top, 20)
            .background(Color.white)
            .cornerRadiusCustom(100, corners: .bottomLeft)
        }
    }
}

extension SchoolDescriptionView {
    
    func locationCount() -> Int {
        let majors = school.education
        let studyLocations = majors.map{ ($0.studyLocation) }
        var differentStudyLocations: [String] = []
        for major in studyLocations {
            for item in major {
                differentStudyLocations.append(item)
            }
        }
        var count: [String: Int] = [:]
        differentStudyLocations.forEach { count[$0, default: 0] += 1 }
        return count.count
    }
    
    func foreignStudents() -> Int {
        var percent: Int
        if school.students != 0 {
            percent = school.internationalStudents * 100 / school.students
        } else {
            percent = 0
        }
        return percent
    }
}
