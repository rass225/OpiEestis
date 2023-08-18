import SwiftUI

struct Logo: View {
    var body : some View {
        HStack{
            Image.appLogo2
                .resizable()
                .scaledToFit()
                .frame(width: 35, height: 35)
                .setColor(Color.oeBlue)
            Text("Õpi Eestis").font(.semiBoldTitle3)
        }
    }
}
