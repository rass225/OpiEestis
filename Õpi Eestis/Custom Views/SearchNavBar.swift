import SwiftUI

struct SearchNavBar: View {
    @Binding var text: String
    var placeholder: String
    var body: some View {
        ZStack{
                HStack{
                    Image.magnifyingGlass
                        .font(.regularBody)
                        .padding(.leading, 15)
                    CustomTextField(
                        placeholder: Text(placeholder).foregroundColor(Color.black.opacity(1)),
                        text: $text
                    )
                    .padding(5)
                    .padding(.leading, 5)
                    Spacer()
                    if !text.isEmpty {
                        Button(action: { text = "" }) {
                            Image.multiply
                                .padding(4)
                                .background(Color.oeBlue)
                                .cornerRadius(100)
                                .foregroundColor(Color.white)
                        }.animation(.default)
                         .padding(.trailing, 15)
                    }
                }.frame(height: 40)
                .font(.system(size: CustomCellFontSize(), weight: .regular))
                .foregroundColor(.black)
            
        }.frame(height: 40)
        .background(Color.white)
//        .cornerRadiusCustom(10, corners: [.bottomLeft, .bottomRight])
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
