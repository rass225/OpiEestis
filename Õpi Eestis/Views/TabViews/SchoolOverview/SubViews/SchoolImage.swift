import SwiftUI

struct SchoolImage: View {
    
    let image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .frame(height: UIScreen.main.bounds.width / 1.7)
            .scaledToFit()
    }
}
