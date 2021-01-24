

import SwiftUI

struct SocialMediaButton: View {
    var website: String
    var body: some View {
        HStack{
            Text(website)
            Spacer()
            Image(website)
                .resizable()
                .scaledToFit()
                
        }.frame(width: UIScreen.main.bounds.width / 2, height: 30)
        .font(Font.callout.weight(.medium))
        .padding(.vertical, 10)
        .padding(.horizontal, 10)
        .background(Color.white)
        .foregroundColor(Color.black)
        .cornerRadius(7)
        .shadow(color: Color.gray, radius: 5, x: 4, y: 4)
    }
}
