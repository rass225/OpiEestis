import SwiftUI

struct AllView: View {
    @State var passedSchools: [majorsMinors]
    @State var category: String
    @State var searchText = ""
    @State var sortedbytoggle = false
    //mariah is the love of my life
  
    var body: some View {
        ZStack{
            Color.customBlue.edgesIgnoringSafeArea(.all)
            VStack(spacing: 0){
                SearchNavBar(text: $searchText, placeholder: "Otsi eriala...")
                ScrollView{
                    VStack(spacing: 0){
                        if searchBarfunc().isEmpty == true {
                            SearchError()
                        } else {
                            ForEach(searchBarfunc().sorted(by: sortedbytoggle ? {$0.name > $1.name} : {$0.name < $1.name})){ item in
                                NavigationLink(destination: MajorView1(passedMajor: item)){
                                    MajorCell(item: item)
                                }
                                Divider()
                            }
                        }
                    }
                }
            }.edgesIgnoringSafeArea(.bottom)
        }
        .environment(\.colorScheme, .light)
        .navigationBarTitle(Text(category), displayMode: .inline)
        .navigationBarItems(trailing:
            Button(action: { self.sortedbytoggle.toggle() }) {
                Image(systemName: "arrow.up.arrow.down")
                    .padding([.leading, .vertical])
            }
        )
    }
}

extension AllView {
    func searchBarfunc() -> [majorsMinors] {
        var filteredSchools: [majorsMinors]
        if searchText.isEmpty {
            filteredSchools = passedSchools
        } else {
            filteredSchools = passedSchools.filter { $0.name.lowercased().contains(searchText.lowercased())}
        }
        return filteredSchools
    }
}
