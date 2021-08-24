import SwiftUI

struct Requirements_View: View {
    @EnvironmentObject var theme: Theme
//    @Environment(\.presentationMode) var presentationMode
    let requirements: [Requirements]
    
    var body: some View {
        ZStack{
            Color.whiteDim1.edgesIgnoringSafeArea(.all)
            VStack(spacing: 0){
                ForEach(requirements){ hey in
                    HStack{
                        Circle()
                            .fill(theme.colorTheme)
                            .frame(width: 10, height: 10, alignment: .top)
                            .padding(.leading, 10)
                            
                        Text(hey.term)
                            .padding(.trailing, 20)
                            
                        Spacer()
                        if hey.percentage != nil {
                            Text("\(hey.percentage!)%")
                                .padding(.trailing, 10)
                        }
                    }
                    .foregroundColor(.black)
                    .font(.regularCallout)
                    .padding(.vertical, 10)
                    .background(Color.white)
                    .cornerRadius(6)
                    .padding(.horizontal)
                    .padding(.top, 8)
                    
                }
                Spacer()
            }
        }.navigationBarTitle(Text(Locale.title.requirements), displayMode: .automatic)
    }
//    func dismiss() {
//        DispatchQueue.main.async {
//            self.presentationMode.wrappedValue.dismiss()
//        }
//        
//    }
}

