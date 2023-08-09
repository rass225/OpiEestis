import SwiftUI

extension MajorsView {
    class Model: ObservableObject {
        let college: College
        let majors: [majorsMinors]
        @Published var selectedLevel = OEAppearance.Locale.degrees.allMajors
        @Published var searchText = ""
        @Published var isAscending = false
        @Published var isSearching = false
        @Published var favorites: [majorsMinors] = []
        let userDefaultsManager = UserDefaultsManager()
        
        init(
            college: College,
            majors: [majorsMinors]
        ) {
            self.college = college
            self.majors = majors
        }
    }
}

extension MajorsView.Model {
    func levels() -> [SelectedLevel] {
        var selectedLevels: [SelectedLevel] = []
        let majors = self.majors
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
        
        selectedLevels.append(SelectedLevel(title: OEAppearance.Locale.degrees.allMajors, level: .allLevels, majors: self.majors))
        
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
    
    func getFavorites() {
        favorites = userDefaultsManager.retrieveFavorites(college: college)
    }
    
    func viewDidDisappear() {
        isSearching = false
        searchText = ""
    }
    
    func selectedMajors() -> [majorsMinors] {
        var majors: [majorsMinors]
        if selectedLevel == OEAppearance.Locale.degrees.allMajors {
            majors = self.majors
        } else {
            majors = self.majors.filter({ $0.level.rawValue == selectedLevel.lowercased()})
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
    
    func didSelectLevel(level: SelectedLevel) {
        selectedLevel = level.level.rawValue
    }
    
    struct SelectedLevel: Identifiable {
        var id = UUID()
        var title: String
        var level: levelchoice
        var majors: [majorsMinors]
    }
}
