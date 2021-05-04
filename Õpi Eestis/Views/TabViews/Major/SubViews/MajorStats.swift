import SwiftUI

struct MajorStats: View {
    
    @State var major: majorsMinors
    @State var school: School
    let statSpacing: CGFloat = 2
    
    var body: some View {
        VStack(spacing: 10){
            
            VStack(spacing: 3){
                Text(major.name).font(.semiBoldTitle3)
                Text(major.level.rawValue.capitalizingFirstLetter()).font(.lightCaption)
            }
            LabelledDivider(label: school.logo)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
            VStack(spacing: 40){
                HStack{
                    Spacer()
                    HStack(spacing: statSpacing){
                        StatImage(image: .squareStack)
                        HStack(spacing: 2){
                            let eap = major.eap != nil ? "\(major.eap!)" : "\(major.ekap!)"
                            let label = major.eap != nil ? "EAP" : "EKAP"
                            Text("\(eap) \(label)")
                        }
                    }.modifier(statCellModifier())
                    Spacer()
                    HStack(spacing: statSpacing){
                        StatImage(image: .globe)
                        Text("\(major.language.rawValue.capitalizingFirstLetter())es")
                    }.modifier(statCellModifier())
                    Spacer()
                    HStack(spacing: statSpacing){
                        StatImage(image: .clockFill)
                        Text(major.duration.isInt()
                                ? "\(Int(major.duration)) aastat"
                                : "\(major.duration, specifier: "%.1f") aastat"
                        )
                    }.modifier(statCellModifier())
                    Spacer()
                    
                }.padding(.horizontal, 12)
                HStack(spacing: 0){
                    if sidePadding() {
                        Spacer()
                    }
                    HStack(spacing: statSpacing){
                        StatImage(image: .locationFill)
                        ForEach(major.studyLocation, id: \.self) { item in
                            Text(item)
                        }
                    }.modifier(statCellModifier())
                    Spacer()
                    HStack(spacing: statSpacing){
                        StatImage(image: .person2Fill)
                        HStack(spacing: 2){
                            let number = major.spots == 0 ? "Piiramatult" : "\(major.spots)"
                            let label = major.spots == 0 ? "õppekohti" : "Õppekohta"
                            Text("\(number) \(label)")
                        }
                    }.modifier(statCellModifier())
                    Spacer()
                    HStack(spacing: statSpacing){
                        StatImage(image: .euroFill)
                        Text(major.cost)
                    }.modifier(statCellModifier())
                    if sidePadding() {
                        Spacer()
                    }
                }
            }
        }.padding(.bottom, 30)
    }
    
    func sidePadding() -> Bool {
        if major.cost == "0€" || major.spots != 0 {
            return true
        } else {
            return false
        }
    }
}
