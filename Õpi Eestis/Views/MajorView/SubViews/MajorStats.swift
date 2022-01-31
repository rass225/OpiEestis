import SwiftUI

struct MajorStats: View {
    @State var major: majorsMinors
    @State var school: School
    @State var isExpanded = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack(alignment: .leading, spacing: 16){
                MajorStat(type: .duration(duration: major.duration), color: school.color)
                MajorStat(type: .spots(spots: major.spots), color: school.color)
                MajorStat(type: .cost(cost: major.cost), color: school.color)
                MajorStat(type: .eap(count: makeEapTop(), hasEAP: major.hasEap()), color: school.color)
                MajorStat(type: .language(lang: major.language), color: school.color)
            }
            .padding(.bottom, 30)
            .frame(maxWidth: .infinity, alignment: .leading)
           
            Divider()
        } .padding(.horizontal, 25)
        
        .onTapGesture {
            withAnimation{
                isExpanded.toggle()
            }
        }
    }
    
    func makeDurationBottom() -> String {
        if major.duration > 1 {
            return OEAppearance.Locale.years
        } else {
            return OEAppearance.Locale.year
        }
    }

    
    func makeEapTop() -> Int {
       return major.hasEap() ? major.eap! : major.ekap!
    }
}
