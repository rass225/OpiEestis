import SwiftUI

struct Requirements_View: View {
    
    let requirements: [Requirements]
    let navBar = NavigationBarTitles()
    
    var body: some View {
        ZStack{
            WhiteBackground()
            VStack(spacing: 0){
                ForEach(requirements){ hey in
                    HStack{
                        Text(String.dot)
                            .font(.regularBody)
                            .padding(.leading, 10)
                        Text(hey.term)
                            .padding(.trailing, 20)
                        Spacer()
                        if hey.percentage != nil {
                            Text("\(hey.percentage!)%")
                                .padding(.trailing, 10)
                        }
                    }.foregroundColor(.black)
                    .padding(.vertical, 10)
                    .font(.regularCallout)
                }
                Spacer()
            }
        }.navigationBarTitle(navBar.requirementsTitle, displayMode: .automatic)
    }
}

