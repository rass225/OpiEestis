import SwiftUI

struct StatImage: View {
    
    let image: Image
    let font: Font
    var body: some View {
        VStack(alignment: .center){
            image
                .foregroundColor(.black)
                .font(font)
        }.frame(width: 25)
    }
}

struct MajorStatImage: View {
    
    let image: Image
    var body: some View {
        VStack(alignment: .center){
            image
                .foregroundColor(.black)
                .font(.title2)
        }
    }
}
