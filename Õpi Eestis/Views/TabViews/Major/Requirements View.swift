import SwiftUI

struct Requirements_View: View {
    
    var passedMajor: [Requirements]
    
    var body: some View {
        ZStack{
            Color.customBlue.edgesIgnoringSafeArea(.all)
            VStack(spacing: 0){
                ForEach(passedMajor){ hey in
                    HStack{
                        Text("•")
                            .font(.regularBody)
                            .padding(.leading, 10)
                            .foregroundColor(Color.black)
                        Text(hey.term)
                            .padding(.trailing, 20)
                        Spacer()
                        if hey.percentage != nil {
                            Text("\(hey.percentage!)%")
                                .padding(.trailing, 20)
                        }
                    }.foregroundColor(Color.white)
                    .padding(.vertical, 10)
                    .font(.lightCallout)
                }.background(Color.black.opacity(0.5))
                Spacer()
            }
        }.navigationBarTitle(Text("Sisseastumine"), displayMode: .inline)
    }
}

