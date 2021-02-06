import SwiftUI

struct MajorStats: View {
    
    @State var passedMajor: majorsMinors
    @State var school: School
    let statSpacing: CGFloat = 2
    
    var body: some View {
        VStack(spacing: 10){
            
            VStack(spacing: 3){
                Text(passedMajor.name).font(.semiBoldTitle3)
                Text(passedMajor.level.rawValue.capitalizingFirstLetter()).font(.lightCaption)
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
                            let eap = passedMajor.eap != nil ? "\(passedMajor.eap!)" : "\(passedMajor.ekap!)"
                            let label = passedMajor.eap != nil ? "EAP" : "EKAP"
                            Text("\(eap) \(label)")
                        }
                    }.modifier(statCellModifier())
                    Spacer()
                    HStack(spacing: statSpacing){
                        StatImage(image: .globe)
                        Text("\(passedMajor.language.rawValue.capitalizingFirstLetter())es")
                    }.modifier(statCellModifier())
                    Spacer()
                    HStack(spacing: statSpacing){
                        StatImage(image: .clockFill)
                        Text(passedMajor.duration.isInt()
                                ? "\(Int(passedMajor.duration))a"
                                : "\(passedMajor.duration, specifier: "%.1f")a"
                        )
                    }.modifier(statCellModifier())
                    Spacer()
                    
                }.padding(.horizontal, 12)
                HStack(spacing: 0){
                    if passedMajor.cost == "0€" || passedMajor.spots != 0 {
                        Spacer()
                    }
                    HStack(spacing: statSpacing){
                        StatImage(image: .locationFill)
                        ForEach(passedMajor.studyLocation, id: \.self) { item in
                            Text(item)
                        }
                    }.modifier(statCellModifier())
                    Spacer()
                    HStack(spacing: statSpacing){
                        StatImage(image: .person2Fill)
                        HStack(spacing: 2){
                            let number = passedMajor.spots == 0 ? "Piiramatult" : "\(passedMajor.spots)"
                            let label = passedMajor.spots == 0 ? "õppekohti" : "Õppekohta"
                            Text("\(number) \(label)")
                        }
                    }.modifier(statCellModifier())
                    Spacer()
                    HStack(spacing: statSpacing){
                        StatImage(image: .euroFill)
                        Text(passedMajor.cost)
                    }.modifier(statCellModifier())
                    if passedMajor.cost == "0€" || passedMajor.spots != 0 {
                        Spacer()
                    }
                }
            }
        }.padding(.bottom, 30)
    }
}
