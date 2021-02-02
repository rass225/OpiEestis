import SwiftUI

struct SchoolListView: View {
    
    let placeholder = "Otsi kõrgkooli..."
    
    @State var searchText = ""
    
    var body: some View {
        ZStack{
            WhiteBackground()
            drawBody()
        }.navigationBarTitle("Ülikoolid", displayMode: .automatic)
    }
}

extension SchoolListView {
    
    @ViewBuilder private func drawBody() -> some View {
        ScrollView {
            VStack(spacing: 0){
                ForEach(schools.indices) { index in
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
            filteredSchools = schools
        } else {
            filteredSchools = schools.filter { $0.name.lowercased().contains(searchText.lowercased())}
        }
        return filteredSchools.sorted(by: { $0.name < $1.name })
    }
}
