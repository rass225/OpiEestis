import SwiftUI
import MessageUI

struct DegreeView: View {
    let school: School
    let education: [majorsMinors]
    @State var selectedLevel = OEAppearance.Locale.degrees.allMajors
    @State var searchText = ""
    @State var isAscending = false
    @State var isSearching = false
    
    @ObservedObject var presenter = UserDefaultManager()
    @State var favorites = [majorsMinors]()
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 0) {
                if isSearching {
                    SearchNavBar(text: $searchText)
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 0) {
                        ForEach(levels()) { item in
                            levelCell(item)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 5)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
                Divider().background(Color.mediumGray)
            }.background(Color.white)
            List(selectedMajors()) { item in
                let isFavorite: Bool = favorites.contains(item)
                NavigationLink(destination: MajorView(
                    isFavorite: isFavorite,
                    major: item,
                    school: school
                )) {
                    MajorCell(item: item, school: school, isFavorite: isFavorite)
                }
            }
        }
        .toolbar {
            AppToolbarItem(.dismiss, color: school.color)
            AppToolbarItem(.sort(toggle: $isAscending), color: school.color)
            AppToolbarItem(.search(toggle: $isSearching), color: school.color)
            AppToolbarItem(.logo(school: school), color: school.color)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            favorites = presenter.retrieveFavorites(school: school.name)
        }
        .onDisappear {
            isSearching = false
            searchText = ""
        }
    }
}

private extension DegreeView {
    @ViewBuilder
    private func levelCell(_ level: SelectedLevel) -> some View {
        Button(action: {
            didSelectLevel(level: level)
        }) {
            SelectionView(
                school: school,
                item: level,
                isSearching: $isSearching,
                selectedLevel: $selectedLevel
            )
        }
    }
}

extension DegreeView {
    
    private struct SelectionView: View {
        let school: School
        let item: SelectedLevel
        @Binding var isSearching: Bool
        @Binding var selectedLevel: String
        
        var body : some View {
            VStack(spacing: 3) {
                Text(item.title)
                    .font(.mediumCallout)
                    .padding(.horizontal, 12)
                    .padding(.top, 8)
                    .foregroundColor(selectedLevel == item.level.rawValue ? school.color : .black)
                if selectedLevel == item.level.rawValue {
                    Rectangle()
                        .frame(width: 65, height: 3)
                        .foregroundColor(school.color)
                        .cornerRadiusCustom(50, corners: [.topLeft, .topRight])
                } else {
                    VStack{
                        
                    } .frame(width: 65, height: 3)
                    
                }
            }
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
        
        selectedLevels.append(SelectedLevel(title: OEAppearance.Locale.degrees.allMajors, level: .allLevels, majors: education))
        
        if !kutse.isEmpty {
            selectedLevels.append(SelectedLevel(title: OEAppearance.Locale.degrees.kutse, level: .kutseharidus, majors: kutse))
        }
        if !applied.isEmpty {
            selectedLevels.append(SelectedLevel(title: OEAppearance.Locale.degrees.applied, level: .applied, majors: applied))
        }
        if !bachelor.isEmpty {
            selectedLevels.append(SelectedLevel(title: OEAppearance.Locale.degrees.bachelors, level: .bachelor, majors: bachelor))
        }
        if !integrated.isEmpty {
            selectedLevels.append(SelectedLevel(title: OEAppearance.Locale.degrees.integrated, level: .integrated, majors: integrated))
        }
        if !masters.isEmpty {
            selectedLevels.append(SelectedLevel(title: OEAppearance.Locale.degrees.masters, level: .masters, majors: masters))
        }
        if !doctor.isEmpty {
            selectedLevels.append(SelectedLevel(title: OEAppearance.Locale.degrees.doctor, level: .doctor, majors: doctor))
        }
        
        return selectedLevels
    }
    
    func selectedMajors() -> [majorsMinors] {
        var majors: [majorsMinors]
        if selectedLevel == OEAppearance.Locale.degrees.allMajors {
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
    }
}
