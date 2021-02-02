import SwiftUI

struct MajorView1: View {
    
    var passedMajor: majorsMinors
    let school: School
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            WhiteBackground()
            VStack(spacing: 0){
                MajorStats(passedMajor: passedMajor, school: school)
                MajorButtonsView(major: passedMajor)
                Spacer()
            }.padding(.top, -40)
            .edgesIgnoringSafeArea(.bottom)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(
            leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image.chevronLight
                    .shadow(color: Color.black, radius: 10, x: 0, y: 0)
                    .foregroundColor(Color.black)
                    .font(.regularTitle3)
                    .padding(.trailing, 30)
            }
        )
    }
}
//i love rasmus <3
