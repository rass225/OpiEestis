import SwiftUI

// MARK: - Headers

extension MajorView {
    @ViewBuilder
    func statsHeader() -> some View {
        Header(
            label: "Üldandmed",
            image: Theme.Icons.requirements,
            color: model.college.palette.base,
            withTopPadding: true,
            isHidden: true
        )
    }
    
    @ViewBuilder
    func descriptionHeader() -> some View {
        Header(
            label: OEAppearance.Locale.title.description,
            image: Theme.Icons.docs,
            color: model.college.palette.base,
            withTopPadding: false
        )
    }
    
    @ViewBuilder
    func modulesHeader() -> some View {
        Header(
            label: OEAppearance.Locale.title.modules,
            image: Theme.Icons.stack,
            color: model.college.palette.base,
            withTopPadding: true
        )
    }
    
    @ViewBuilder
    func requirementsHeader() -> some View {
        Header(
            label: OEAppearance.Locale.acceptance,
            image: Theme.Icons.requirements,
            color: model.college.palette.base,
            withTopPadding: true
        )
    }
    
    @ViewBuilder
    func outcomesHeader() -> some View {
        Header(
            label: OEAppearance.Locale.title.outcomes,
            image: Theme.Icons.outcomes,
            color: model.college.palette.base,
            withTopPadding: true
        )
    }
    
    @ViewBuilder
    func websiteHeader() -> some View {
        Header(
            label: OEAppearance.Locale.homepage,
            image: Theme.Icons.house,
            color: model.college.palette.base,
            withTopPadding: false
        )
    }
    
    @ViewBuilder
    func personnelHeader() -> some View {
        Header(
            label: OEAppearance.Locale.personnel,
            image: Theme.Icons.person2,
            color: model.college.palette.base,
            withTopPadding: false
        )
    }
    
    @ViewBuilder
    func locationsHeader() -> some View {
        Header(
            label: "Asukoht",
            image: Theme.Icons.location,
            color: model.college.palette.base,
            withTopPadding: false
        )
    }
    
    @ViewBuilder
    func reviewsHeader(
        label: String = "Arvustus",
        image: Image = Theme.Icons.review,
        withTopPadding: Bool = false
    ) -> some View {
        HStack(spacing: 8){
            image
                .setSymbol(.none, .palette)
                .setFont(.body, .regular, .rounded)
                .setColor(.white, model.college.palette.base.gradient)
                .frame(width: 24, alignment: .leading)
            HStack(spacing: 4) {
                Text(label.capitalizedSentence)
                    .setFont(.body, .semibold, .rounded)
                    .textCase(.none)
                    .setColor(Theme.Colors.black)
                Text("(vabatahtlik)")
                    .setFont(.subheadline, .regular, .rounded)
                    .textCase(.none)
                    .setColor(Theme.Colors.gray)
            }
            Spacer()
        }
        .padding(.top, withTopPadding ? 32 : 0)
        .listRowInsets(.eight)
    }
    
    @ViewBuilder
    func ratingsHeader() -> some View {
        Header(
            label: "Hinnang",
            image: Theme.Icons.star,
            color: model.college.palette.base,
            withTopPadding: false
        )
    }
    
    @ViewBuilder
    func reviewListHeader(
        label: String = "Arvustused",
        addLabel: String = "Lisa",
        withTopPadding: Bool = false
    ) -> some View {
        HStack(spacing: 8){
            Theme.Icons.review
                .setSymbol(.none, .palette)
                .setFont(.body, .regular, .rounded)
                .setColor(.white, model.college.palette.base.gradient)
                .frame(width: 24, alignment: .leading)
            Text(label.capitalizedSentence)
                .setFont(.body, .semibold, .rounded)
                .textCase(.none)
                .setColor(Theme.Colors.black)
            Spacer()
        }
        .padding(.top, withTopPadding ? 32 : 0)
        .listRowInsets(.eight)
        .overlay(alignment: .trailing) {
            if let user = model.user {
                if !model.reviews.compactMap(\.text).isEmpty && !model.reviews.contains(where: { $0.user.id == user.id && $0.text != nil }) {
                    Button(action: model.openNewReviewView) {
                        HStack(spacing: 4) {
                            Text(addLabel.capitalized)
                                .textCase(.none)
                                .setFont(.subheadline, .medium, .rounded)
                            Image(systemName: "plus")
                                .setFont(.footnote, .medium, .rounded)
                        }
                        .setColor(model.college.palette.base)
                        .padding(.vertical, 4)
                        .padding(.horizontal, 8)
                        .background(
                            ZStack {
                                Capsule(style: .continuous)
                                    .fill(Color.white)
                                Capsule(style: .continuous)
                                    .fill(model.college.palette.base.opacity(0.175).gradient)
                            }
                        )
                        .padding(.bottom, 6)
                    }
                }
            }
        }
    }
}
