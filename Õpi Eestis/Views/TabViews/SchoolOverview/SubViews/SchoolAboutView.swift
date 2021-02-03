import SwiftUI

struct SchoolAboutView: View {
    
    let school: School
    
    var body: some View {
        ZStack{
            WhiteBackground()
            VStack(spacing: 0){
                SheetCapsule()
                ScrollView{
                    LabelledDivider(label: school.logo, color: Color.white)
                        .padding(.top, 10)
                        .padding(.horizontal, 16)
                    if !school.vastuvõtt.isEmpty {
                        drawStats()
                    }
                    drawDescription()
                }
            }
        }
    }
    
    @ViewBuilder private func drawStats() -> some View {
        VStack{
            Text("Vastuvõtt")
                .font(.boldCallout)
            HStack{
                ForEach(school.vastuvõtt, id: \.self) { item in
                    Text(item)
                }.font(.regularCaption)
            }
//            Divider().background(Color.black).padding(.horizontal)
        }
        
//        .cornerRadius(10)
    }
    
    @ViewBuilder private func drawDescription() -> some View {
        VStack{
            ForEach(school.description, id: \.self) { item in
                Text(item)
                    .font(.lightCallout)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color.black)
                    .padding(.vertical, 8)
                    .lineSpacing(5)
            }
        }.padding(.horizontal, 16)
        .padding(.top, 20)
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
