import SwiftUI

@available(iOS 14.0, *)
struct TabViewController: View {
    
    @State var passedSchool: School
    
    @State var tabIndex = 1
    var body: some View {
        ZStack(alignment: .top){
            Color.customBlue.edgesIgnoringSafeArea(.all)
            VStack(spacing: 0){
                if tabIndex == 1 {
                    SchoolView(passedschools: passedSchool)
                }
                else if tabIndex == 2 {
                    DegreeView(passedSchools1: passedSchool)
                }
                HStack{
                    Spacer()
                    Button(action: { tabIndex = 1 }) {
                        TabViewCell(image: "house", label: "Kodu", tabIndex: $tabIndex, tab: 1)
                    }.frame(maxWidth: .infinity)
                    Spacer()
                    Button(action: { tabIndex = 2 }) {
                        TabViewCell(image: "book", label: "Erialad", tabIndex: $tabIndex, tab: 2)
                    }.frame(maxWidth: .infinity)
                    Spacer()
                    
                }.padding(.bottom, UIScreen.main.bounds.height > 790 ? 25 : 5)
                .background(Color.black.opacity(0.5))
                
            }
            .navigationBarTitle(Text(passedSchool.name), displayMode: .inline)
        }.edgesIgnoringSafeArea(.bottom)
    }
}
