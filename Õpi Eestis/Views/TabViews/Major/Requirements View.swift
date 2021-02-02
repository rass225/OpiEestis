import SwiftUI

struct Requirements_View: View {
    
    var major: [Requirements]
    
    var body: some View {
        ZStack{
            WhiteBackground()
            VStack(spacing: 0){
                ForEach(major){ hey in
                    HStack{
                        Text("•")
                            .font(.regularBody)
                            .padding(.leading, 10)
                        Text(hey.term)
                            .padding(.trailing, 20)
                        Spacer()
                        if hey.percentage != nil {
                            Text("\(hey.percentage!)%")
                                .padding(.trailing, 10)
                        }
                    }.foregroundColor(Color.black)
                    .padding(.vertical, 10)
                    .font(.regularCallout)
                }
                Spacer()
            }
        }.navigationBarTitle(Text("Sisseastumine"), displayMode: .automatic)
    }
}

