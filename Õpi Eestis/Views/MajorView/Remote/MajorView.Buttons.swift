import SwiftUI

// MARK: - Buttons

extension MajorView {
    @ViewBuilder
    func backButton() -> some View {
        BackButton(color: model.college.palette.base)
    }
    
    @ViewBuilder
    func favoritesButton() -> some View {
        if model.user != nil {
            if model.isFavorite {
                Image(systemName: "heart.fill")
                    .setFont(.body, .semibold, .rounded)
                    .setColor(model.college.palette.base.gradient)
                    .padding(.trailing, 4)
                    .onTapGesture(perform: model.removeFavorite)
            } else {
                Image(systemName: "heart")
                    .setFont(.body, .bold, .rounded)
                    .setColor(model.college.palette.base.gradient)
                    .padding(.trailing, 4)
                    .onTapGesture(perform: model.addFavorite)
            }
        }
    }
}
