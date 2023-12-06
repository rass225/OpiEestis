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
                Theme.Icons.heart
                    .setSymbol(.fill)
                    .setFont(.body, .semibold, .rounded)
                    .setColor(model.college.palette.base.gradient)
                    .padding(.trailing, 4)
                    .padding(.leading)
                    .padding(.vertical,4)
                    .onTapGesture(perform: model.removeFavorite)
            } else {
                Theme.Icons.heart
                    .setFont(.body, .bold, .rounded)
                    .setColor(model.college.palette.base.gradient)
                    .padding(.trailing, 4)
                    .padding(.leading)
                    .padding(.vertical,4)
                    .onTapGesture(perform: model.addFavorite)
            }
        } else {
            Theme.Icons.heart
                .setFont(.body, .bold, .rounded)
                .setColor(model.college.palette.base.gradient)
                .padding(.trailing, 4)
                .padding(.leading)
                .padding(.vertical,4)
                .onTapGesture(perform: model.presentLogin)
        }
    }
}
