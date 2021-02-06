import SwiftUI

struct SearchNavBar: View {
    @Binding var text: String
    var placeholder: String
    var body: some View {
        ZStack{
                HStack{
                    Image.magnifyingGlass
                        .padding(.leading, 15)
                    CustomTextField(
                        placeholder: Text(placeholder).foregroundColor(Color.black.opacity(0.7)),
                        text: $text
                    )
                    .padding(5)
                    .padding(.leading, 5)
                    Spacer()
                    if !text.isEmpty {
                        Button(action: { text = "" }) {
                            Image.multiply
                        }.animation(.default)
                         .padding(.trailing, 15)
                    }
                }.frame(height: 38)
                .font(.system(size: CustomCellFontSize(), weight: .regular))
                .foregroundColor(.black)
        }.frame(height: 38)
    }
}


extension SearchNavBar {
    func CustomCellFontSize() -> CGFloat {
        let size = SizeObject()
        var customHeight: CGFloat = 0
        if size.height > 900 {
            customHeight = size.height / 70
        }
        else {
            customHeight = size.width / 25
        }
        
        return customHeight
    }
}
