import SwiftUI

struct DegreeView: View {
    let school: School
    @State var selectedLevel = "Kõik Erialad"
    @State var navBarTitle = "Kõik Erialad"
    @State var searchText = ""
    @State var isAscending = false
    var body: some View {
        ZStack{
            Color.white.edgesIgnoringSafeArea(.all)
            VStack(spacing: 0){
                ScrollView{
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(levels()) { item in
                                Button(action: {
                                    selectedLevel = item.level
                                    navBarTitle = item.title
                                }) {
                                    Text(item.title.capitalizingFirstLetter())
                                        .padding(.horizontal, 6)
                                }.font(Font.callout.weight(selectedLevel == item.level ? .bold : .light))
                                .animation(.default)
                                Divider().background(Color.black)
                            }
                        }
                    }.frame(height: 40)
                    .foregroundColor(Color.black)
                    Divider()
                    SearchNavBar(text: $searchText, placeholder: "Otsi eriala...")
                    Divider().background(Color.black)
                    ForEach(selectedMajors()) { item in
                        NavigationLink(destination: MajorView1(passedMajor: item, school: school)) {
                            MajorCell(item: item)
                        }
                        Divider()
                    }
                }
            }
        }
        .navigationBarItems(trailing: Button(action: { isAscending.toggle() }) { Image.flip })
        .navigationBarTitle(Text(navBarTitle), displayMode: .automatic)
    }
}

extension DegreeView {
    
    private struct SelectedLevel: Identifiable {
        var id = UUID()
        var title: String
        var level: String
        var majors: [majorsMinors]
    }
    private func levels() -> [SelectedLevel] {
        var selectedLevel = [SelectedLevel]()
        let majors = school.education
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
        
        selectedLevel.append(SelectedLevel(title: "Kõik Erialad", level: "Kõik Erialad", majors: school.education))
        
        if !kutse.isEmpty {
            selectedLevel.append(SelectedLevel(title: "Kutseharidus", level: "kutseharidus", majors: kutse))
        }
        if !applied.isEmpty {
            selectedLevel.append(SelectedLevel(title: "Rakenduskõrgharidus", level: "rakenduskõrgharidus", majors: applied))
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
            majors = school.education
        } else {
            majors = school.education.filter({ $0.level.rawValue == selectedLevel.lowercased()})
        }
        if !searchText.isEmpty {
            majors = majors.filter({ $0.name.lowercased().contains(searchText.lowercased()) })
        }
        if isAscending {
            majors = majors.sorted(by: { $0.name > $1.name })
        } else {
            majors = majors.sorted(by: { $0.name < $1.name})
        }
        return majors
    }
}



