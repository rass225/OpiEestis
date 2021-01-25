import SwiftUI

@available(iOS 14.0, *)
struct DegreeView: View {
    var passedSchools1: School
    @State var selectedLevel = "Kõik Erialad"
    @State var searchText = ""
    @State var isAscending = false
    var body: some View {
        ZStack{
            Color.customBlue.edgesIgnoringSafeArea(.all)
            VStack(spacing: 0){
                
                
                ScrollView{
                    VStack(spacing: 0){
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(levels()) { item in
                                    Button(action: {
                                        selectedLevel = item.level
                                    }) {
                                        Text(item.title)
                                            .padding(.horizontal, 6)
                                    }.font(Font.callout.weight(selectedLevel == item.level ? .bold : .light))
                                    .animation(.default)
                                    Divider()
                                }
                            }
                        }.frame(height: 40)
                        .font(Font.callout.weight(.light))
                        .background(Color.black.opacity(0.5))
                        .foregroundColor(Color.white)
                        Divider()
                        SearchNavBar(text: $searchText, placeholder: "Otsi eriala...")
                        Divider()
                        ForEach(selectedMajors()) { item in
                            NavigationLink(destination: MajorView1(passedMajor: item)) {
                                MajorCell(item: item)
                                
                            }
                            Divider()
                        }
                    }
                }
            }
            
        }
        .navigationBarItems(trailing:
            Button(action: { isAscending.toggle() }) {
                Image(systemName: "arrow.up.arrow.down")
            }
        )
        .environment(\.colorScheme, .light)
    }
}

//NavigationLink(destination: AllView(passedSchools: item.majors, category: item.title)) {
//                        MajorLabel(text: item.title)
    
//}
@available(iOS 14.0, *)
extension DegreeView {
    
    struct SelectedLevel: Identifiable {
        var id = UUID()
        var title: String
        var level: String
        var majors: [majorsMinors]
    }
    func levels() -> [SelectedLevel] {
        var selectedLevel = [SelectedLevel]()
        let majors = passedSchools1.education
        var bachelor: [majorsMinors]
        var masters: [majorsMinors]
        var doctor: [majorsMinors]
        var integrated: [majorsMinors]
        var applied: [majorsMinors]
        var kutse: [majorsMinors]
        
        bachelor = majors.filter({ (level) -> Bool in
            return level.level == levelchoice.bachelor
        })
        
        masters = majors.filter({ (level) -> Bool in
            return level.level == levelchoice.masters
        })
        
        doctor = majors.filter({ (level) -> Bool in
            return level.level == levelchoice.doctor
        })
        
        integrated = majors.filter({ (level) -> Bool in
            return level.level == levelchoice.integrated
        })
        
        applied = majors.filter({ (level) -> Bool in
            return level.level == levelchoice.applied
        })
        
        kutse = majors.filter({ (level) -> Bool in
            return level.level == levelchoice.kutseharidus
        })
        
        selectedLevel.append(SelectedLevel(title: "Kõik Erialad", level: "Kõik Erialad", majors: passedSchools1.education))
        
        if !kutse.isEmpty {
            selectedLevel.append(SelectedLevel(title: "Kutseharidus", level: "kutseharidus", majors: kutse))
        }
        if !applied.isEmpty {
            selectedLevel.append(SelectedLevel(title: "Rakenduskõrgharidusõpe", level: "rakenduskõrgharidus", majors: applied))
        }
        if !bachelor.isEmpty {
            selectedLevel.append(SelectedLevel(title: "Bakalaureuseõpe", level: "bakalaureus", majors: bachelor))
        }
        if !integrated.isEmpty {
            selectedLevel.append(SelectedLevel(title: "Integreeritud õpe", level: "integreeritud õpe", majors: integrated))
        }
        if !masters.isEmpty {
            selectedLevel.append(SelectedLevel(title: "Magistriõpe", level: "magister", majors: masters))
        }
        if !doctor.isEmpty {
            selectedLevel.append(SelectedLevel(title: "Doktoriõpe", level: "doktor", majors: doctor))
        }
        return selectedLevel
    }
    
    func selectedMajors() -> [majorsMinors] {
        var majors: [majorsMinors]
        if selectedLevel == "Kõik Erialad" {
            majors = passedSchools1.education
        } else {
            majors = passedSchools1.education.filter({ $0.level.rawValue == selectedLevel.lowercased()})
        }
        if !searchText.isEmpty {
//            if selectedLevel == "Kõik Erialad" {
                majors = majors.filter({ $0.name.lowercased().contains(searchText.lowercased()) })
//            } else {
//                let majors2 = majors
//                
//            }
            
        }
        if isAscending {
           majors = majors.sorted(by: { $0.name > $1.name })
        } else {
           majors = majors.sorted(by: { $0.name < $1.name})
        }
         
        
        return majors
    }
}



