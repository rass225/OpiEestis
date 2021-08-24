import SwiftUI

struct Description_View: View {
    let major: majorsMinors
    
    var body: some View {
        ZStack{
            Color.whiteDim1.ignoreEdges(edge: .all)
            VStack(spacing: 0){
                ScrollView{
                    MajorDataView(data: major.description)
                }
            }.navigationBarTitle(Text(Locale.title.description), displayMode: .automatic)
        } 
    }
}

