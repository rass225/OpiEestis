import SwiftUI

// MARK: - Buttons

extension CollegeView {
    @ViewBuilder
    func helpButton() -> some View {
        Menu(content: contactContent) {
            Image(systemName: "person.crop.circle.badge.questionmark")
                .setFont(.body, .semibold, .rounded)
                .setColor(model.college.palette.base.gradient)
                .padding(.trailing, 4)
        }
    }
    
    @ViewBuilder
    func backButton() -> some View {
        BackButton(color: model.college.palette.base)
    }
    
    @ViewBuilder
    func expandButton() -> some View {
        Image(systemName: "arrow.up.left.and.down.right.and.arrow.up.right.and.down.left")
            .setFont(.title2, .medium, .rounded)
            .setColor(model.college.palette.base.gradient)
            .padding(6)
            .background(.regularMaterial)
            .clipShape(.rect(cornerRadius: 6, style: .continuous))
            .padding(16)
            .padding([.leading, .bottom])
            .contentShape(Rectangle())
            .onTapGesture(perform: model.presentMapView)
    }
}
