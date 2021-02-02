import SwiftUI

struct LevelStat: View {
    
    let label: String
    let stat: Int
    var body : some View {
        if stat != 0 {
            VStack(alignment: .center, spacing: 0){
                Text("\(stat)").font(.boldCallout)
                Text(label).font(.regularCaption)
            }
        }
    }
}
