import SwiftUI

struct TabViewCell: View {
    
    let image: String
    let label: String
    @Binding var tabIndex: Int
    let tab: Int
    
    var body: some View {
        VStack{
            Image(systemName: image)
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(tab == tabIndex ? Color.white : Color.white.opacity(0.5))
            Text(label)
                .font(Font.caption.weight(.light))
                .foregroundColor(tab == tabIndex ? Color.white : Color.white.opacity(0.5))
        }
    }
}
