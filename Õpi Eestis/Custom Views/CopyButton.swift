import SwiftUI

struct CopyButton: View {
    var body: some View {
        VStack{
            Image(systemName:"doc.on.doc")
                .resizable()
                .frame(width: UIScreen.main.bounds.height / 55, height: UIScreen.main.bounds.height / 45.7)
        }
        .frame(width: UIScreen.main.bounds.height / 35, height: UIScreen.main.bounds.height / 35)
        .background(Color.white)
        .cornerRadius(UIScreen.main.bounds.height / 35 / 2)
        .shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 0)
        
        .foregroundColor(Color.black)
        .font(.system(size: UIScreen.main.bounds.width / 24, weight: .regular))
        
            
    }
}
