import SwiftUI

struct Header: View {
    let label: LocalizedStringKey
    let image: Image
    let color: Color
    let withTopPadding: Bool
    let isHidden: Bool
    
    init(
        label: LocalizedStringKey,
        image: Image,
        color: Color,
        withTopPadding: Bool = false,
        isHidden: Bool = false
    ) {
        self.label = label
        self.image = image
        self.color = color
        self.withTopPadding = withTopPadding
        self.isHidden = isHidden
    }
    
    var body: some View {
        HStack(spacing: 8){
            image
                .setFont(.body, .regular, .rounded)
                .setColor(color.gradient)
                .frame(width: 24, alignment: .leading)
            Text(label)
                .setFont(.body, .semibold, .rounded)
                .textCase(.none)
                .setColor(Theme.Colors.black)
            Spacer()
        }
        .padding(.top, withTopPadding ? 32 : 0)
        .listRowInsets(.eight)
        .opacity(isHidden ? 0 : 1)
    }
}
