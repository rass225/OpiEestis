import SwiftUI

struct drawMenuItem: View {
    @EnvironmentObject var theme: Theme
    let image: Image
    var body: some View {
        ZStack{
            Circle()
                .frame(height: 40)
                .frame(width: 40)
                .padding(.vertical, 5)
                .padding(.horizontal, 5)
                .foregroundColor(theme.colorTheme)
                        
            image
                .frame(height: 35)
                .frame(width: 35)
                .font(.regularTitle3)
                .foregroundColor(Color.white)
        }
        
            
    }
}
