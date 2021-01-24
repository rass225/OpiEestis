import SwiftUI

struct MajorStats: View {
    
    @State var passedMajor: majorsMinors
    let mereAkadeemia = "Eesti Mereakadeemia"
    let riigikaitse = "Riigikaitse"
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                HStack{
                    VStack(alignment: .leading){
                        Image(systemName:"thermometer")
                            .foregroundColor(Color.black)
                    }.frame(width: 25)
                    VStack(alignment: .leading, spacing: 0){
                        Text("Kraad")
                            .padding(.bottom, 5)
                            .font(Font.callout.weight(.regular))
                        Text(passedMajor.level.rawValue)
                            .font(Font.caption.weight(.regular))
                    }
                    Spacer()
                }.modifier(statCellModifier())
                
                Spacer()
                
                HStack{
                    VStack(alignment: .leading){
                        Image(systemName: "square.grid.3x2")
                            .foregroundColor(Color.black)
                    }.frame(width: 25)
                    VStack(alignment: .leading, spacing: 0){
                        if passedMajor.type.rawValue == mereAkadeemia {
                            Text("Osakond")
                                .padding(.bottom, 5)
                                .font(Font.callout.weight(.regular))
                        } else if passedMajor.type.rawValue == riigikaitse {
                            Text("Õppekava rühm")
                                .padding(.bottom, 5)
                                .font(Font.callout.weight(.regular))
                        }
                        else {
                            Text("Valdkond")
                                .padding(.bottom, 5)
                                .font(Font.callout.weight(.regular))
                        }
                        Text(passedMajor.type.rawValue)
                            .font(Font.caption.weight(.regular))
                    }
                    Spacer()
                }.modifier(statCellModifier())
                
                Spacer()
                
                HStack{
                    VStack(alignment: .leading) {
                        Image(systemName: "clock")
                            .foregroundColor(Color.black)
                    }.frame(width: 25)
                    VStack(alignment: .leading, spacing: 0){
                        Text("Kestus")
                            .padding(.bottom, 5)
                            .font(Font.callout.weight(.regular))
                        if passedMajor.name != "Ettevõtlus ja ärijuhtimine" {
                            Text("\(Int(passedMajor.duration)) aastat")
                                .font(Font.caption.weight(.regular))
                        } else {
                            VStack(alignment: .leading){
                                Text("\(Int(passedMajor.duration))a päevaõppes")
                                    .font(Font.caption.weight(.regular))
                                Text("3.5a sessioonõppes")
                                    .font(Font.caption.weight(.regular))
                            }
                        }
                    }
                    Spacer()
                }.modifier(statCellModifier())
                
                Spacer()
                
                HStack{
                    VStack(alignment: .leading) {
                        Image(systemName: "square.stack.3d.up.fill")
                            .foregroundColor(Color.black)
                    }.frame(width: 25)
                    VStack(alignment: .leading, spacing: 0){
                        Text(passedMajor.eap != nil ? "EAP" : "EKAP")
                            .padding(.bottom, 5)
                            .font(Font.callout.weight(.regular))
                        if passedMajor.eap != nil {
                            Text("\(passedMajor.eap!)")
                                .font(Font.caption.weight(.regular))
                        } else if passedMajor.ekap != nil {
                            Text("\(passedMajor.ekap!)")
                                .font(Font.caption.weight(.regular))
                        }
                        
                    }
                    Spacer()
                }.modifier(statCellModifier())
                
            }
            
            
            Spacer()
            
            VStack(alignment: .leading){
                
                HStack{
                    VStack(alignment: .center){
                        Image(systemName: "globe")
                            .foregroundColor(Color.black)
                    }.frame(width: 25)
                    VStack(alignment: .leading, spacing: 0){
                        Text("Õppekeel")
                            .padding(.bottom, 5)
                            .font(Font.callout.weight(.regular))
                        Text("\(passedMajor.language.rawValue)")
                            .font(Font.caption.weight(.regular))
                    }
                    Spacer()
                }.modifier(statCellModifier())
                
                Spacer()
                
                HStack{
                    VStack(alignment: .center){
                        Image(systemName: "person.2")
                            .foregroundColor(Color.black)
                    }.frame(width: 25)
                
                    VStack(alignment: .leading, spacing: 0){
                        Text("Õppekohti")
                            .font(Font.callout.weight(.regular))
                            .padding(.bottom, 5)
                        if passedMajor.spots == 0 {
                            Text("Piiramatu")
                                .font(Font.caption.weight(.regular))
                        } else {
                            Text("\(passedMajor.spots)")
                                .font(Font.caption.weight(.regular))
                        }
                    }
                    Spacer()
                }.modifier(statCellModifier())
                
                Spacer()
                
                HStack{
                    VStack(alignment: .center){
                        Image(systemName: "location")
                            .foregroundColor(Color.black)
                    }.frame(width: 25)
                    VStack(alignment: .leading, spacing: 0){
                        Text("Asukoht")
                            .font(Font.callout.weight(.regular))
                            .padding(.bottom, 5)
                        Text("\(passedMajor.studyLocation)")
                            .font(Font.caption.weight(.regular))
                    }
                    Spacer()
                }.modifier(statCellModifier())
                
                Spacer()
                
                HStack{
                    VStack(alignment: .leading) {
                        Image(systemName: "eurosign.circle")
                            .foregroundColor(Color.black)
                    }.frame(width: 25)
                    VStack(alignment: .leading, spacing: 0){
                        Text("Maksumus")
                            .padding(.bottom, 5)
                            .font(Font.callout.weight(.regular))
                        Text(passedMajor.cost)
                            .font(Font.caption.weight(.regular))
                    }
                    Spacer()
                }.modifier(statCellModifier())
            }
        }
        .padding(.vertical, 15)
        .frame(height: UIScreen.main.bounds.height / 3 )
        .background(Color.black.opacity(0.5))
    }
}
