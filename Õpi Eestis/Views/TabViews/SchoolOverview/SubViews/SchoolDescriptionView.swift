import SwiftUI

struct SchoolDescriptionView: View {
    @State var passedschools: School
    @State var foreignStudentsToggle = false
    var body: some View {
        HStack(alignment: .top){
            VStack(alignment: .leading){
                HStack{
                    VStack(alignment: .center){
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(Color.black)
                    }.frame(width: 30)
                    VStack(alignment: .leading, spacing: 0){
                        Text("Asukoht")
                            .font(Font.callout.weight(.regular))
                            .padding(.bottom, 5)
                        Text("\(self.locationfunc().city)")
                            .font(Font.caption.weight(.regular))
                    }
                    Spacer()
                }.modifier(statCellModifier())
                
                Spacer()
                
                HStack{
                    VStack(alignment: .center) {
                        Image(systemName: "person.3")
                            .foregroundColor(Color.black)
                    }.frame(width: 30)
                    VStack(alignment: .leading, spacing: 0){
                        Text("Üliõpilasi")
                            .font(Font.callout.weight(.regular))
                            .padding(.bottom, 5)
                        if self.passedschools.students == 0 {
                            Text("N/A")
                                .font(Font.caption.weight(.regular))
                        } else {
                            Text("\(self.passedschools.students)")
                                .font(Font.caption.weight(.regular))
                        }
                    }
                    Spacer()
                }.modifier(statCellModifier())
                
                Spacer()
                
                HStack{
                    VStack(alignment: .center) {
                        Image(systemName: "person.2")
                            .foregroundColor(Color.black)
                    }.frame(width: 30)
                    VStack(alignment: .leading, spacing: 0){
                        Text("Välisüliõpilasi")
                            .font(Font.callout.weight(.regular))
                            .padding(.bottom, 5)
                        if passedschools.name != "Estonian Business School" {
                            Text(foreignStudentsToggle ? "\(foreignStudents())%": "\(self.passedschools.internationalStudents)")
                                .font(Font.caption.weight(.regular))
                        } else {
                            Text(foreignStudentsToggle ? "\(foreignStudents())%": "42. riigist")
                                .font(Font.caption.weight(.regular))
                        }
                    }
                    Spacer()
                }.modifier(statCellModifier())
                .onTapGesture { foreignStudentsToggle.toggle() }
            }
            
            Spacer()
            
            VStack(alignment: .leading){
                HStack{
                    VStack(alignment: .center) {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(Color.black)
                    }.frame(width: 30)
                    VStack(alignment: .leading, spacing: 0){
                        Text("Osakonnad")
                            .font(Font.callout.weight(.regular))
                            .padding(.bottom, 5)
                        Text("\(self.locationCount()) linnas")
                                .font(Font.caption.weight(.regular))
                    }
                    Spacer()
                }.modifier(statCellModifier())
                
                Spacer()
                
                HStack{
                    VStack(alignment: .center) {
                        Image(systemName: "list.dash")
                            .foregroundColor(Color.black)
                    }.frame(width: 30)
                    VStack(alignment: .leading, spacing: 0){
                        Text("Erialasid")
                            .font(Font.callout.weight(.regular))
                            .padding(.bottom, 5)
                        Text("\(self.passedschools.education.count)")
                                .font(Font.caption.weight(.regular))
                    }
                    Spacer()
                }.modifier(statCellModifier())
                
                Spacer()
                
                HStack{
                    VStack(alignment: .center) {
                        Image(systemName: "chart.bar")
                            .foregroundColor(Color.black)
                    }.frame(width: 30)
                    VStack(alignment: .leading, spacing: 0){
                        if passedschools.name != "Estonian Business School" {
                            Text("Maailmas")
                                .font(Font.callout.weight(.regular))
                                .padding(.bottom, 5)
                            Text(passedschools.worldRanking == 0 ? ">1000. koht" : "\(self.passedschools.worldRanking). Koht")
                                .font(Font.caption.weight(.regular))
                        } else {
                            Text("Ärikool")
                                .font(Font.callout.weight(.regular))
                                .padding(.bottom, 5)
                            Text("Top 100 maailmas")
                                .font(Font.caption.weight(.regular))
                        }
                    }
                    Spacer()
                }.modifier(statCellModifier())
            }
        }
        .padding(.vertical, 20)
        .frame(height: UIScreen.main.bounds.height / 3.5)
        .background(Color.black.opacity(0.5))
        .foregroundColor(Color.white.opacity(1))
    }
}

extension SchoolDescriptionView {
    
    func locationCount() -> Int {
        var majors: [majorsMinors]
        majors = passedschools.education
        let majors2 = majors.map {
            ($0.studyLocation)
        }
        var count: [String: Int] = [:]
        majors2.forEach { count[$0, default: 0] += 1 }
        return count.count
    }
    
    func locationfunc() -> Location {
        let location = passedschools.location
        return location
    }
    
    func foreignStudents() -> Int {
        let s = passedschools.students
        let fs = passedschools.internationalStudents
        var percent: Int
        if fs != 0 {
            percent = fs * 100 / s
        } else {
            percent = 0
        }
        return percent
    }
}
