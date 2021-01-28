import SwiftUI

struct SchoolDescriptionView: View {
    @State var passedschools: School
    @State var foreignStudentsToggle = false
    var body: some View {
        HStack(alignment: .top){
            VStack(alignment: .leading){
                HStack{
                    StatImage(image: "mappin.and.ellipse", width: 30)
                    VStack(alignment: .leading, spacing: 5){
                        Text("Asukoht")
                        Text("\(locationfunc().city)").font(.regularCaption)
                    }
                }.modifier(statCellModifier())
                
                Spacer()
                
                HStack{
                    StatImage(image: "person.3", width: 30)
                    VStack(alignment: .leading, spacing: 5){
                        Text("Üliõpilasi")
                        Text(passedschools.students != 0 ? "\(passedschools.students)" : "N/A").font(.regularCaption)
                    }
                }.modifier(statCellModifier())
                
                Spacer()
                
                HStack{
                    StatImage(image: "person.2", width: 30)
                    VStack(alignment: .leading, spacing: 5){
                        Text("Välisüliõpilasi")
                        Text(passedschools.name.contains("Business")
                                ? foreignStudentsToggle ? "\(foreignStudents())%": "42. riigist"
                                : foreignStudentsToggle ? "\(foreignStudents())%": "\(passedschools.internationalStudents)"
                        ).font(.regularCaption)
                    }
                }.modifier(statCellModifier())
                .onTapGesture { foreignStudentsToggle.toggle() }
            }
            
            Spacer()
            
            VStack(alignment: .leading){
                HStack{
                    StatImage(image: "mappin.circle", width: 30)
                    VStack(alignment: .leading, spacing: 5){
                        Text("Osakonnad")
                        Text("\(locationCount()) linnas").font(.regularCaption)
                    }
                }.modifier(statCellModifier())
                
                Spacer()
                
                HStack{
                    StatImage(image: "list.dash", width: 30)
                    VStack(alignment: .leading, spacing: 5){
                        Text("Erialasid")
                        Text("\(passedschools.education.count)").font(.regularCaption)
                    }
                }.modifier(statCellModifier())
                
                Spacer()
                
                HStack{
                    StatImage(image: "chart.bar", width: 30)
                    VStack(alignment: .leading, spacing: 5){
                        Text(passedschools.name.contains("Business") ? "Ärikool" : "Maailmas")
                        Text(passedschools.name.contains("Business")
                                ? "Top 100 maailmas"
                                : passedschools.worldRanking == 0 ? ">1000. koht" : "\(passedschools.worldRanking). Koht"
                        ).font(.regularCaption)
                    }
                }.modifier(statCellModifier())
            }
        }
        .padding(.vertical, 20)
        .frame(height: UIScreen.main.bounds.height / 3.5)
        .background(Color.black.opacity(0.5))
    }
}

extension SchoolDescriptionView {
    
    func locationCount() -> Int {
        let majors = passedschools.education
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
//        let majors = passedschools.education.map{ ($0.studyLocation) }
//        let test = majors.unique
//        var count: [String: Int] = [:]
//        test.forEach { count[$0, default: 0] += 1 }
//        return count.count
    }
    
    func locationfunc() -> Location {
        return passedschools.location
    }
    
    func foreignStudents() -> Int {
        var percent: Int
        if passedschools.students != 0 {
            percent = passedschools.internationalStudents * 100 / passedschools.students
        } else {
            percent = 0
        }
        return percent
    }
}
