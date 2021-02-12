import SwiftUI

struct StatImage: View {
    
    let image: Image
    var body: some View {
        VStack(alignment: .center){
            image
                .foregroundColor(.black)
                .font(.regularCaption)
        }
    }
}
