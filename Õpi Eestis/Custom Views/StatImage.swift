import SwiftUI

struct StatImage: View {
    
    let image: String
    var body: some View {
        VStack(alignment: .center){
            Image(systemName: image)
                .foregroundColor(.black)
                .font(.regularCallout)
        }
    }
}
