import SwiftUI

struct SearchNavBar: View {
    @Binding var text: String
    var placeholder: String
    var body: some View {
        ZStack{
            HStack(spacing: 0){
                Image.magnifyingGlass
                    .font(.regularTitle3)
                    .padding(.leading, 10)
                CustomTextField(
                    placeholder: Text(placeholder).foregroundColor(.black),
                    text: $text
                )
                .frame(maxWidth: .infinity)
                .padding(.leading, 10)
                if !text.isEmpty {
                    Button(action: { text = "" }) {
                        Image.multiply
                            .padding(8)
                            .foregroundColor(Color.black)
                    }
                    .padding(.trailing, 6)
                }
            }.frame(height: 40)
            .font(.system(size: CustomCellFontSize(), weight: .regular))
            .foregroundColor(.black)
            
        }
//        .frame(height: 40)
//        .background(Color.gray.opacity(0.2))
//        .cornerRadius(10)
//        .padding(.horizontal)
//        .padding(.bottom, 15)
//        .background(Color.white)
    }
    func CustomCellFontSize() -> CGFloat {
        var customHeight: CGFloat = 0
        if Size.height > 900 {
            customHeight = Size.height / 70
        }
        else {
            customHeight = Size.width / 25
        }
        
        return customHeight
    }
}
