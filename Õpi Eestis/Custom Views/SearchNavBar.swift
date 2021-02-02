import SwiftUI

struct SearchNavBar: View {
    @Binding var text: String
    var placeholder: String
    var body: some View {
        ZStack{
//            Color.customBlue.edgesIgnoringSafeArea(.all)
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
                .foregroundColor(Color.black)
        }.frame(height: 38)
    }
}


extension SearchNavBar {
    func customNavBarHeight() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        if screenHeight > 690 {
            customHeight = CGFloat(124)
        } else {
            customHeight = CGFloat(100)
        }
        return customHeight
    }
    
    func CustomCellFontSize() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        let screenWidth = UIScreen.main.bounds.width
        if screenHeight > 900 {
            customHeight = screenHeight / 70
        }
        else {
            customHeight = screenWidth / 25
        }
        
        return customHeight
    }
}
