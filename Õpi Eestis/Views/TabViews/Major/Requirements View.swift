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
                            .font(.custom("Roboto", size: UIScreen.main.bounds.width / 17))
                            .padding(.leading, 10)
                            .foregroundColor(Color.black.opacity(1))
                        Text(hey.term)
                            .padding(.trailing, 20)
                        Spacer()
                        if hey.percentage != nil {
                            Text("\(hey.percentage!)%")
                                .padding(.trailing, 20)
                        }
                    }.foregroundColor(Color.white.opacity(1))
                    .padding(.vertical, 10)
                    .font(Font.callout.weight(.light))
                }.background(Color.black.opacity(0.5))
                Spacer()
            }
            
        }.navigationBarTitle(Text("Sisseastumine"), displayMode: .inline)
    }
}

