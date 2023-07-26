import SwiftUI

struct Requirements_View: View {
    let requirements: [Requirements]
    let school: School
    let footer = "Protsendiga tähistatud kriteeriumid on sisseastumisprotsessiga seotud. Ülejäänud vastuvõtutingimused on eelduseks kandideerimisel."
    
    var body: some View {
        Form{
            Section(
                content: contentView,
                footer: footerView
            )
        }
        .scrollContentBackground(.hidden)
        .background(Color.whiteDim1)
        .navigationBarBackButtonHidden(true)
        .toolbar{
            AppToolbarItem(.dismiss, color: school.color)
            AppToolbarItem(.title(type: .requirements), color: school.color)
        }
    }
    
    @ViewBuilder
    func footerView() -> some View {
        Text(footer)
    }
    
    @ViewBuilder
    func contentView() -> some View {
        ForEach(requirements) { item in
            requirementCell(item)
        }
    }
    
    @ViewBuilder
    func requirementCell(_ requirement: Requirements) -> some View {
        HStack{
            Text(requirement.term)
            Spacer()
            if requirement.percentage != nil {
                Text("\(requirement.percentage!)%")
            }
        }.foregroundColor(.black)
            .font(.regularSubHeadline)
    }
}

