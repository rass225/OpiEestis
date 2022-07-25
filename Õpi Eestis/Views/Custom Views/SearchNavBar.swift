import SwiftUI

struct SearchNavBar: View {
    @Binding var text: String
    let placeholder = OEAppearance.Locale.search.searchPlaceholder
    var body: some View {
        ZStack{
            HStack(spacing: 0){
                Image.magnifyingGlass
                    .font(.regularBody)
                    .padding(.leading, 10)
                CustomTextField(
                    placeholder: Text(placeholder).foregroundColor(Color.black.opacity(0.5)),
                    text: $text
                )
                .frame(maxWidth: .infinity)
                .padding(.leading, 10)
                if !text.isEmpty {
                    Button(action: { text = "" }) {
                        Image.multiply
                            .padding(8)
                            .foregroundColor(.black)
                    }
                    .padding(.trailing, 6)
                }
            }.frame(height: 40)
            .font(.regularBody)
            .foregroundColor(text.isEmpty ? Color.black.opacity(0.6) : Color.black)
            
        }.modifier(SearchBarModifier())
    }
}
