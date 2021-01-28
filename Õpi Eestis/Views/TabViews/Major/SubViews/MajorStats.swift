import SwiftUI

struct MajorStats: View {
    
    @State var passedMajor: majorsMinors
    let mereAkadeemia = "Eesti Mereakadeemia"
    let riigikaitse = "Riigikaitse"
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                HStack{
                    StatImage(image: "thermometer", width: 30)
                    VStack(alignment: .leading, spacing: 5){
                        Text("Kraad")
                        Text(passedMajor.level.rawValue).font(.regularCaption)
                    }
                }.modifier(statCellModifier())
                
                Spacer()
                
                HStack{
                    StatImage(image: "square.grid.3x2", width: 30)
                    VStack(alignment: .leading, spacing: 5){
                        if passedMajor.type.rawValue == mereAkadeemia {
                            Text("Osakond")
                        } else if passedMajor.type.rawValue == riigikaitse {
                            Text("Õppekava rühm")
                        } else {
                            Text("Valdkond")
                        }
                        Text(passedMajor.type.rawValue).font(.regularCaption)
                    }
                }.modifier(statCellModifier())
                
                Spacer()
                
                HStack{
                    StatImage(image: "clock", width: 30)
                    VStack(alignment: .leading, spacing: 5){
                        Text("Kestus")
                        Text(
                            passedMajor.duration.isInt()
                                ? "\(Int(passedMajor.duration))":
                                "\(passedMajor.duration, specifier: "%.1f")"
                        ).font(.regularCaption)
                    }
                }.modifier(statCellModifier())
                
                Spacer()
                
                HStack{
                    StatImage(image: "square.stack.3d.up.fill", width: 30)
                    VStack(alignment: .leading, spacing: 5){
                        Text(passedMajor.eap != nil ? "EAP" : "EKAP")
                        Text(passedMajor.eap != nil ? "\(passedMajor.eap!)" : "\(passedMajor.ekap!)").font(.regularCaption)
                    }
                }.modifier(statCellModifier())
            }
            
            Spacer()
            
            VStack(alignment: .leading){
                HStack{
                    StatImage(image: "globe", width: 30)
                    VStack(alignment: .leading, spacing: 5){
                        Text("Õppekeel")
                        Text("\(passedMajor.language.rawValue)").font(.regularCaption)
                    }
                }.modifier(statCellModifier())
                
                Spacer()
                
                HStack{
                    StatImage(image: "person.2", width: 30)
                    VStack(alignment: .leading, spacing: 5){
                        Text("Õppekohti")
                        Text(passedMajor.spots == 0 ? "Piiramatu" : "\(passedMajor.spots)").font(.regularCaption)
                    }
                }.modifier(statCellModifier())
                
                Spacer()
                
                HStack{
                    StatImage(image: "location", width: 30)
                    VStack(alignment: .leading, spacing: 5){
                        Text("Asukoht")
                        HStack{
                            ForEach(passedMajor.studyLocation, id: \.self) { item in
                                Text(item)
                            }.font(.regularCaption)
                        }
                    }
                }.modifier(statCellModifier())
                
                Spacer()
                
                HStack{
                    StatImage(image: "eurosign.circle", width: 30)
                    VStack(alignment: .leading, spacing: 5){
                        Text("Maksumus")
                        Text(passedMajor.cost).font(.regularCaption)
                    }
                }.modifier(statCellModifier())
            }
        }
        .padding(.vertical, 15)
        .frame(height: UIScreen.main.bounds.height / 3 )
        .background(Color.black.opacity(0.5))
    }
}
