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
                .font(.title3)
            VStack(alignment: .leading, spacing: 0){
                Text(topLabel)
                    .setFont(.subheadline, .semibold, .rounded)
                    .setColor(.black)
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
    func majorContentCell(_ item: Model.StatEntity) -> some View {
        if item.count != 0 {
            HStack(alignment: .center, spacing: 10){
                Circle()
                    .fill(item.color.gradient)
                    .frame(width: 13, height: 13, alignment: .center)
                
                Text(item.name.rawValue.capitalized)
                    .setFont(.subheadline, .regular, .rounded)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("\(item.count)")
                    .setFont(.subheadline, .semibold, .rounded)
            }.setColor(.black)
        }
    }
}
