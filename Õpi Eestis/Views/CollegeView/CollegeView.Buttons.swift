import SwiftUI

// MARK: - Buttons

extension CollegeView {
    @ViewBuilder
    func contactButton(
        label: String,
        image: Image,
        action: @escaping () -> ()
    ) -> some View {
        image
            .setFont(.title2, .regular, .rounded)
            .setColor(model.college.palette.base.gradient)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.vertical, 12)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .onTapGesture(perform: action)
    }
    
    @ViewBuilder
    func copyButton(text: String) -> some View {
        Button(action: {
            UIPasteboard.general.string = text
        }) {
            Theme.Icons.docs
                .setSymbol(.fill)
                .setFont(.callout, .light, .rounded)
                .setColor(model.college.palette.base.gradient)
                .padding(8)
                .background(Circle().fill(Color.white))
        }
    }
    
    @ViewBuilder
    func backButton() -> some View {
        BackButton(color: model.college.palette.base)
    }
}
