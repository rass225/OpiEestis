import SwiftUI

struct MajorView1: View {
    var passedMajor: majorsMinors
    //i love rasmus <3
    let EBSsession = 3.5
    var body: some View {
        ZStack{
            Color.customBlue.edgesIgnoringSafeArea(.all)
            VStack(spacing: 0){
                MajorStats(passedMajor: passedMajor)
                MajorButtonsView(passedMajor: passedMajor)
            }.edgesIgnoringSafeArea(.bottom)
        }.navigationBarTitle(Text(passedMajor.name), displayMode: .inline)
        .environment(\.colorScheme, .light)
    }
}
