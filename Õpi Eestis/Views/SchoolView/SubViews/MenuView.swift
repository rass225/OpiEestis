import SwiftUI

struct drawMenuItem: View {
    let image: Image
    let primaryColor: Color
    let secondaryColor: Color
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 40, height: 40)
                .padding(5)
                .foregroundColor(primaryColor)
                        
            image
                .frame(width: 35, height: 35)
                .font(.regularTitle3)
                .foregroundColor(secondaryColor)
        }       
    }
}
