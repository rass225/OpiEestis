import SwiftUI

struct CourseView: View {
    @EnvironmentObject var theme : Theme
    let major: majorsMinors
    
    var body: some View {
        ZStack{
            Color.whiteDim1.ignoresSafeArea()
            Form{
                    ForEach(major.modules!) { item in
                        DisclosureGroup(item.module) {
                            ForEach(item.courses) { item in
                                HStack(spacing: 0){
                                    Text(item.name)
                                        .font(.lightCallout)
                                    Spacer()
                                    HStack(spacing: 0){
                                        Text(item.eapCount.isInt() ? "\(Int(item.eapCount))" : "\(item.eapCount, specifier: "%.1f")")
                                            
                                            .padding(.trailing, 5)
                                        let label = major.eap != nil ? "EAP" : "EKAP"
                                        Text("\(label)")
                                    }.foregroundColor(theme.colorTheme)
                                    .font(.regularCallout)
                                    
                                }
                            }
                            if item.submodules != nil {
                                ForEach(item.submodules!) { item in
                                    DisclosureGroup(item.name) {
                                        ForEach(item.courses) { item in
                                            HStack(spacing: 0){
                                                Text(item.name).font(.lightCallout)
                                                Spacer()
                                                HStack(spacing: 0){
                                                    Text(item.eapCount.isInt() ? "\(Int(item.eapCount))" : "\(item.eapCount, specifier: "%.1f")")
                                                        .padding(.trailing, 5)
                                                    let label = major.eap != nil ? "EAP" : "EKAP"
                                                    Text("\(label)")
                                                        
                                                }.foregroundColor(theme.colorTheme)
                                                .font(.regularCallout)
                                            }
                                        }
                                    }
                                }
                            }
                            
                        }
                    }.font(.regularCallout)
                    .accentColor(theme.colorTheme)
//                }
            }
        }.navigationBarTitle(Text("Moodulid"), displayMode: .automatic)
    }
}
