import SwiftUI

struct MajorView: View {
    
    let major: majorsMinors
    let school: School
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var theme: Theme
    
    var body: some View {
        ZStack{
            Color.whiteDim1.edgesIgnoringSafeArea(.bottom)
            VStack(spacing: 0){
                MajorStats(major: major, school: school)
                MajorButtonsView(major: major)
                Spacer()
                Spacer()
            }.padding(.top, -40)
//            .ignoreEdges(edge: .bottom)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(
            leading: Button(action: { dismiss() }) {
                Image.chevronLight
                    .defaultShadow(color: .black, radius: 10)
                    .foregroundColor(.black)
                    .font(.regularTitle3)
                    .padding(.trailing, 30)
            }
        )
    }
    
    func dismiss() {
        self.presentationMode.wrappedValue.dismiss()
    }
}
//i love rasmus <3
