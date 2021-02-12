import SwiftUI

struct LabelledDivider: View {
    
    let label: String
    let horizontalPadding: CGFloat
    let color: Color
    let size = SizeObject()
    
    init(label: String, horizontalPadding: CGFloat = 10, color: Color = .black) {
        self.label = label
        self.horizontalPadding = horizontalPadding
        self.color = color
    }
    
    var body: some View {
        HStack(spacing: 0) {
            line.padding(.trailing, horizontalPadding)
            Image(label)
                .resizable()
                .foregroundColor(color)
                .scaledToFit()
                .frame(height: size.width / 6)
                .frame(minWidth: 0, maxWidth: size.width / 5)
            line.padding(.leading, horizontalPadding)
        }
    }
    
    var line: some View {
        VStack {
            Divider().background(Color.black)
        }
    }
}

struct LabelledDivider2: View {
    
    let label: String
    let horizontalPadding: CGFloat
    let color: Color
    
    init(label: String, horizontalPadding: CGFloat = 10, color: Color = .black) {
        self.label = label
        self.horizontalPadding = horizontalPadding
        self.color = color
    }
    
    var body: some View {
        HStack(spacing: 0) {
            line.padding(.trailing, horizontalPadding)
            Text(label)
                .foregroundColor(color)
                .font(.semiBoldTitle3)
            line.padding(.leading, horizontalPadding)
        }
    }
    
    var line: some View {
        VStack {
            Divider().background(Color.black)
        }
    }
}
