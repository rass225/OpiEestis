import SwiftUI

struct SchoolListView: View {
    
    @State var searchText = ""
    
    var body: some View {
        ZStack{
            Color.customBlue.edgesIgnoringSafeArea(.all)
            VStack(spacing: 0){
                SearchNavBar(text: $searchText, placeholder: "Otsi kõrgkooli...")
                drawBody()
            }
        }.navigationBarTitle("", displayMode: .inline)
    }
}

extension SchoolListView {
    
    @ViewBuilder private func drawBody() -> some View {
        ScrollView {
            VStack(spacing: 0){
                if searchBarfunc().isEmpty {
                    SearchError()
                } else {
                    ForEach(searchBarfunc().sorted(by: { $0.name < $1.name })) { item in
                        NavigationLink(destination: TabViewController(passedSchool: item)) {
                            SchoolCell(school: item)
                        }
                        Divider()
                    }
                }
            }
        }.environment(\.colorScheme, .light)
    }
    
    func searchBarfunc() -> [School] {
        var filteredSchools: [School]
        if searchText.isEmpty {
            filteredSchools = schools
        } else {
            filteredSchools = schools.filter { $0.name.lowercased().contains(searchText.lowercased())}
        }
        return filteredSchools
    }
    
    func customNavBarHeight() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        if screenHeight > 690 {
            customHeight = CGFloat(124)
        } else {
            customHeight = CGFloat(100)
        }
        return customHeight
    }
}
