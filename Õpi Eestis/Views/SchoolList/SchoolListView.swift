import SwiftUI

struct SchoolListView: View {
    let navBar = NavigationBarTitles()
    let schools = Universities()
    @State var searchText = ""
    
    var body: some View {
        ZStack{
            WhiteBackground()
            drawBody()
        }.navigationBarTitle(navBar.schoolListTitle, displayMode: .automatic)
    }
}

extension SchoolListView {
    
    @ViewBuilder private func drawBody() -> some View {
        ScrollView {
            VStack(spacing: 0){
                ForEach(schools.schools.indices) { index in
                    NavigationLink(destination: SchoolView(school: searchBarfunc()[index])) {
                        SchoolCell(school: searchBarfunc()[index], index: index)
                    }
                }
            }
        }
    }
    
    private func searchBarfunc() -> [School] {
        var filteredSchools: [School]
        if searchText.isEmpty {
            filteredSchools = schools.schools
        } else {
            filteredSchools = schools.schools.filter { $0.name.lowercased().contains(searchText.lowercased())}
        }
        return filteredSchools.sorted(by: { $0.name < $1.name })
    }
}
