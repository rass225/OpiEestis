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
}
