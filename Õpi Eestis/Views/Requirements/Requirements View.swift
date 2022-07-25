import SwiftUI

struct Requirements_View: View {
    let requirements: [Requirements]
    let school: School
    let header = "Protsendiga tähistatud kriteeriumid on sisseastumisprotsessiga seotud. Ülejäänud vastuvõtutingimused on eelduseks kandideerimisel."
    
    var body: some View {
        ZStack{
            Color.whiteDim1.edgesIgnoringSafeArea(.all)
            Form{
                Section(footer: Text(header)){
                    ForEach(requirements) { item in
                        HStack{
                            Text(item.term)
                            Spacer()
                            if item.percentage != nil {
                                Text("\(item.percentage!)%")
                            }
                        }.foregroundColor(.black)
                            .font(.regularSubHeadline)
                    }
                }
            }
        }
        .onAppear{ UIScrollView.appearance().isScrollEnabled = false  }
        .onDisappear{ UIScrollView.appearance().isScrollEnabled = true }
        .navigationBarBackButtonHidden(true)
        .toolbar{
            AppToolbarItem(.dismiss, color: school.color)
            AppToolbarItem(.title(type: .requirements), color: school.color)
        }
    }
}

