import Foundation
import SwiftUI
import Combine

class SchoolListPresenter: ObservableObject {
    
    let navBar = NavigationBarTitles()
    let schools = Universities()
    @Published var searchText = ""
    
    func searchBarfunc() -> [School] {
        var filteredSchools: [School]
        if searchText.isEmpty {
            filteredSchools = schools.schools
        } else {
            filteredSchools = schools.schools.filter { $0.name.lowercased().contains(searchText.lowercased())}
        }
        return filteredSchools.sorted(by: { $0.name < $1.name })
    }
    
    func toSchool(index: Int) -> AnyView {
        return AnyView(SchoolView(school: searchBarfunc()[index]))
    }
    
}

