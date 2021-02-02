import SwiftUI

struct StatImage: View {
    
    let image: String
//    let width: CGFloat?
    var body: some View {
        VStack(alignment: .center){
            Image(systemName: image)
                .foregroundColor(Color.black)
                .font(.regularCallout)
        }
    }
}
