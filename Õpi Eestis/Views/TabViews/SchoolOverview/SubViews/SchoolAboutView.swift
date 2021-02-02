import SwiftUI

struct SchoolAboutView: View {
    
    let school: School
    
    var body: some View {
        ZStack{
            WhiteBackground()
            ScrollView{
                SheetCapsule()
                LabelledDivider(label: school.logo, color: Color.white)
                drawDescription()
            }.padding(.horizontal, 16)
        }
    }
    
    @ViewBuilder private func drawDescription() -> some View {
        VStack{
            Text(school.description)
                .font(.lightCallout)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color.black)
                .padding(.vertical, 8)
                .lineSpacing(5)
        }
        .padding(.horizontal, 10)
        .cornerRadius(10)
    }
}

struct LabelledDivider: View {
    
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
            Image(label)
                .resizable()
                .foregroundColor(color)
                .scaledToFit()
                .frame(height: UIScreen.main.bounds.width / 6)
                .frame(minWidth: 0, maxWidth: UIScreen.main.bounds.width / 5)
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
                .font(Font.title.weight(.bold))
            line.padding(.leading, horizontalPadding)
        }
    }
    
    var line: some View {
        VStack {
            Divider().background(Color.black)
        }
    }
}
