import SwiftUI

struct SchoolListView: View {
    
    @ObservedObject var presenter = SchoolListPresenter()
    
    var body: some View {
        ZStack{
            WhiteBackground()
            ScrollView {
                VStack(spacing: 0){
                    ForEach(presenter.schools.schools.indices) { index in
                        NavigationLink(destination: presenter.toSchool(index: index)) {
                            SchoolCell(school: presenter.searchBarfunc()[index], index: index)
                        }
                    }
                }
            }
        }.navigationBarTitle(presenter.navBar.schoolListTitle, displayMode: .automatic)
    }
}
