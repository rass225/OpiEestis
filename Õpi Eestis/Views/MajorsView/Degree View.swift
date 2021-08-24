import SwiftUI

struct DegreeView: View {
    @EnvironmentObject var theme: Theme
    let school: School
    let education: [majorsMinors]
    @State var selectedLevel = Locale.degrees.allMajors
    @State var navBarTitle = Locale.degrees.allMajors
    @State var searchText = ""
    @State var isAscending = false
    @State var isSearching = false
    var body: some View {
        ZStack{
            Color.whiteDim1.ignoreEdges(edge: .bottom)
            VStack(spacing: 0){
                VStack(spacing: 0){
                    VStack{
                        if isSearching {
                            VStack{
                                SearchNavBar(text: $searchText, placeholder: Locale.search.searchPlaceholder)
                            }.frame(height: 40)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .padding(.bottom, 20)
                            .background(Color.white)
                        }
                    }
                    
                   
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 0){
                            ForEach(levels()) { item in
                                Button(action: { didSelectLevel(level: item) }) {
                                    SelectionView(item: item, color: theme.colorTheme, isSearching: $isSearching, selectedLevel: $selectedLevel)
                                }
                            }
                        }.padding(.horizontal, 10)
                    }.background(Color.white)
                    Divider().background(Color.dimGray)
                }
                ScrollView{
                    VStack(spacing: 0){
                        ForEach(selectedMajors()) { item in
                            NavigationLink(destination: MajorView(major: item, school: school)) {
                                MajorCell(item: item, color: theme.colorTheme)
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
        .navigationBarTitle(Text(navBarTitle), displayMode: .automatic)
        .navigationBarItems(
            trailing: HStack{
                Button(action: { isSearching.toggle() }) {
                    navBarImage(image: .magnifyingGlass, color: theme.colorTheme)
                }
                Button(action: { order() }) {
                    navBarImage(image: .flip, color: theme.colorTheme)
                }
            }
        )
    }
}

extension DegreeView {
    
    private struct SelectionView: View {
        let item: SelectedLevel
        let color: Color
        @Binding var isSearching: Bool
        @Binding var selectedLevel: String
        
        var body : some View {
            Text(item.title)
                .font(.regularCallout)
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .foregroundColor(selectedLevel == item.level.rawValue ? .white : .black)
                .background(selectedLevel == item.level.rawValue ? color : .white)
                .clipShape(Capsule())
                .padding(.bottom, 10)
        }
    }

    private struct SelectedLevel: Identifiable {
        var id = UUID()
        var title: String
        var level: levelchoice
        var majors: [majorsMinors]
    }
    private func levels() -> [SelectedLevel] {
        var selectedLevels: [SelectedLevel] = []
        let majors = education
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
        
        selectedLevels.append(SelectedLevel(title: Locale.degrees.allMajors, level: .allLevels, majors: education))
        
        if !kutse.isEmpty {
            selectedLevels.append(SelectedLevel(title: Locale.degrees.kutse, level: .kutseharidus, majors: kutse))
        }
        if !applied.isEmpty {
            selectedLevels.append(SelectedLevel(title: Locale.degrees.applied, level: .applied, majors: applied))
        }
        if !bachelor.isEmpty {
            selectedLevels.append(SelectedLevel(title: Locale.degrees.bachelors, level: .bachelor, majors: bachelor))
        }
        if !integrated.isEmpty {
            selectedLevels.append(SelectedLevel(title: Locale.degrees.integrated, level: .integrated, majors: integrated))
        }
        if !masters.isEmpty {
            selectedLevels.append(SelectedLevel(title: Locale.degrees.masters, level: .masters, majors: masters))
        }
        if !doctor.isEmpty {
            selectedLevels.append(SelectedLevel(title: Locale.degrees.doctor, level: .doctor, majors: doctor))
        }
        
        
        return selectedLevels
    }
    
    func selectedMajors() -> [majorsMinors] {
        var majors: [majorsMinors]
        if selectedLevel == Locale.degrees.allMajors {
            majors = education
        } else {
            majors = education.filter({ $0.level.rawValue == selectedLevel.lowercased()})
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
        selectedLevel = level.level.rawValue
        navBarTitle = level.title
    }
}



