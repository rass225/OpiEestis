import SwiftUI

struct DegreeView: View {
    @EnvironmentObject var theme: Theme
    let school: School
    @State var selectedLevel = "Kõik Erialad"
    @State var navBarTitle = "Kõik Erialad"
    @State var searchText = ""
    @State var isAscending = false
    @State var isSearching = false
    var body: some View {
        ZStack{
            Color.whiteDim1.edgesIgnoringSafeArea(.bottom)
            VStack(spacing: 0){
                VStack(spacing: 0){
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 0){
                            ForEach(levels()) { item in
                                Button(action: { didSelectLevel(level: item) }) {
                                    Text(item.title.capitalizingFirstLetter()).padding(.horizontal, 6)
                                        .font(.lightCallout)
                                        .padding(.horizontal, selectedLevel == item.level ? 6 : 6)
                                        .padding(.vertical, selectedLevel == item.level ? 6 : 6)
                                        .background(selectedLevel == item.level ? theme.colorTheme : Color.white)
                                        .foregroundColor(selectedLevel == item.level ? Color.white : Color.black)
                                        .cornerRadius(25)
                                        .padding(.bottom, isSearching ? 0 : 10)
                                        .animation(.default)
                                        
                                }
                            }
                        }.padding(.horizontal, 10)
                    }
//                    .frame(height: 40)
                    .background(Color.white)
                    if isSearching {
                        SearchNavBar(text: $searchText, placeholder: "Otsi eriala...")
                    }
                    Divider().background(Color.gray.opacity(0.01))
                }//.shadow(color: Color.black.opacity(0.05), radius: 3, x: 5, y: 5)
                ScrollView{
                    VStack(spacing: 0){
                        
                        ForEach(selectedMajors()) { item in
                            NavigationLink(destination: MajorView(major: item, school: school)) {
                                MajorCell(item: item)
                            }.simultaneousGesture(
                                TapGesture()
                                    .onEnded { _ in
                                        isSearching = false
                                        searchText = ""
                                    }
                            )
                        }
                    }
                }
            }
        }.background(Color.white)
        .navigationBarItems(
            trailing: HStack{
                Button(action: { isSearching.toggle() }) {
                    navBarImage(image: Image.magnifyingGlass, color: theme.colorTheme)
                }
                Button(action: { order() }) {
                    navBarImage(image: Image.flip, color: theme.colorTheme)
                }
            }
                
        ).navigationBarTitle(Text(navBarTitle), displayMode: .automatic)
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
        var selectedLevels = [SelectedLevel]()
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
        
        selectedLevels.append(SelectedLevel(title: "Kõik Erialad", level: "Kõik Erialad", majors: school.education))
        
        if !kutse.isEmpty {
            selectedLevels.append(SelectedLevel(title: "Kutseharidus", level: "kutseharidus", majors: kutse))
        }
        if !applied.isEmpty {
            selectedLevels.append(SelectedLevel(title: "Rakenduskõrgharidus", level: "rakenduskõrgharidus", majors: applied))
        }
        if !bachelor.isEmpty {
            selectedLevels.append(SelectedLevel(title: "Bakalaureuseõpe", level: "bakalaureus", majors: bachelor))
        }
        if !integrated.isEmpty {
            selectedLevels.append(SelectedLevel(title: "Integreeritud õpe", level: "integreeritud õpe", majors: integrated))
        }
        if !masters.isEmpty {
            selectedLevels.append(SelectedLevel(title: "Magistriõpe", level: "magister", majors: masters))
        }
        if !doctor.isEmpty {
            selectedLevels.append(SelectedLevel(title: "Doktoriõpe", level: "doktor", majors: doctor))
        }
       
        
        return selectedLevels
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
        majors = isAscending ? majors.sorted(by: { $0.name > $1.name }) : majors.sorted(by: { $0.name < $1.name})
        return majors
    }
    
    private func order() {
        isAscending.toggle()
    }
    
    private func didSelectLevel(level: SelectedLevel) {
        selectedLevel = level.level
        navBarTitle = level.title
    }
}

private struct navBarImage: View {
    let image: Image
    let color: Color
    var body: some View {
        image
            .frame(height: 35)
            .frame(width: 35)
            .font(.regularBody)
            .background(color)
            .cornerRadius(50)
            .foregroundColor(Color.white)
    }
}
