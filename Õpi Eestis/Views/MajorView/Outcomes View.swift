import SwiftUI

struct Outcomes_View: View {
    let major: majorsMinors
    var body: some View {
        ZStack{
            Color.whiteDim1.edgesIgnoringSafeArea(.all)
            ScrollView{
                MajorDataView(data: major.outcomes)
            }
        }.navigationBarTitle(Text(Locale.title.outcomes), displayMode: .automatic)
    }
}
