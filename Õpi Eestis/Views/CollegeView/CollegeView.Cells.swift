import SwiftUI

// MARK: - Cells

extension CollegeView {
    @ViewBuilder
    func statisticCell(
        topLabel: String,
        bottomLabel: String,
        image: Image
    ) -> some View {
        HStack(alignment: .center, spacing: 5){
            image
                .setColor(model.college.palette.base.gradient)
                .setFont(.title3, .regular, .rounded)
            VStack(alignment: .leading, spacing: 0){
                Text(topLabel)
                    .setFont(.subheadline, .semibold, .rounded)
                    .setColor(Theme.Colors.black)
                Text(bottomLabel)
                    .setFont(.footnote, .regular, .rounded)
                    .setColor(.darkGray)
            }
        }
    }
    
    @ViewBuilder
    func linkCell(link: CollegeLink) -> some View {
        if let validLink = URL(string: link.link) {
            Image(link.name)
                .resizable()
                .renderingMode(.template)
                .fit()
                .frame(height: 24)
                .setColor(model.college.palette.base.gradient)
                .padding(8)
                .smoothCorners(radius: 10, color: .white)
                .onTapGesture {
                    model.openLink(validLink)
                }
        }
    }
    
    @ViewBuilder
    func levelView(for level: Level, count: Int) -> some View {
        HStack(alignment: .center, spacing: 16){
            Circle()
                .fill(model.college.palette.secondary.gradient)
                .frame(width: 10, height: 10, alignment: .center)

            Text(level.label)
                .setFont(.subheadline, .medium, .rounded)
                .maxWidth(alignment: .leading)
            Text(String(count))
                .setFont(.body, .semibold, .rounded)
        }
        .setColor(Theme.Colors.white)
    }
    
    @ViewBuilder
    func imageCell(_ ref: String) -> some View {
        if let url = URL(string: ref) {
            if let cachedImage = model.imageCache[url] {
                Image(uiImage: cachedImage)
                    .resizable()
                    .fill()
            } else {
                AsyncImage(
                    url: url,
                    content: { image in
                        image
                            .resizable()
                            .fill()
                    },
                    placeholder: {
                        ProgressView()
                    })
            }
        }
    }
}
