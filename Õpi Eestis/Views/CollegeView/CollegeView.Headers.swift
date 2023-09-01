import SwiftUI

// MARK: - Headers

extension CollegeView {
    @ViewBuilder
    func header(
        label: String,
        image: Image,
        color: Color
    ) -> some View {
        HStack(spacing: 8){
            image
                .font(.body)
                .setColor(color.gradient)
                .frame(width: 20, alignment: .leading)
            Text(label.capitalized)
                .setFont(.body, .semibold, .rounded)
                .textCase(.none)
                .setColor(.black)
            Spacer()
        }
        .listRowInsets(.eight)
    }
    
    @ViewBuilder
    func subHeader(label: String) -> some View {
        Text(label)
            .setFont(.subheadline, .regular, .rounded)
            .setColor(.darkGray)
    }
    
    @ViewBuilder
    func contactHeader() -> some View {
        header(
            label: "Kontakt",
            image: .phoneFill,
            color: model.college.palette.base
        )
    }
    
    @ViewBuilder
    func admissionHeader() -> some View {
        header(
            label: "Vastuvõtt",
            image: .requirementsFill,
            color: model.college.palette.base
        )
    }
    
    @ViewBuilder
    func summaryHeader() -> some View {
        header(
            label: "Koolist",
            image: .graduationFill,
            color: model.college.palette.base
        )
    }
    
    @ViewBuilder
    func locationHeader() -> some View {
        header(
            label: "Asukoht",
            image: .locationFill,
            color: model.college.palette.base
        )
    }
    
    @ViewBuilder
    func majorsHeader() -> some View {
        header(
            label: "Erialad",
            image: .textBook,
            color: model.college.palette.base
        )
    }
    
    @ViewBuilder
    func mainDataHeader() -> some View {
        GeometryReader { geo in
                Image(model.college.logoRef)
                    .resizable()
                    .fit()
                    .maxWidth()
                    .background(GeometryReader {
                        Color.clear.preference(
                            key: ViewOffsetKey.self,
                            value: -$0.frame(in: .named("scroll")).origin.y
                        )
                    })
        }
        .frame(height: 100, alignment: .top)
        .listRowInsets(.zero)
    }
}
