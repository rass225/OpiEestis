import SwiftUI

// MARK: - Headers

extension CollegeView {
    @ViewBuilder
    func subHeader(label: String) -> some View {
        Text(label)
            .setFont(.subheadline, .regular, .rounded)
            .setColor(.darkGray)
    }
    
    @ViewBuilder
    func contactHeader() -> some View {
        Header(
            label: "Kontakt",
            image: Theme.Icons.phone,
            color: model.college.palette.base
        )
    }
    
    @ViewBuilder
    func admissionHeader() -> some View {
        Header(
            label: "Vastuvõtt",
            image: Theme.Icons.requirements,
            color: model.college.palette.base
        )
    }
    
    @ViewBuilder
    func summaryHeader() -> some View {
        Header(
            label: "Koolist",
            image: Theme.Icons.graduation,
            color: model.college.palette.base
        )
    }
    
    @ViewBuilder
    func locationHeader() -> some View {
        Header(
            label: "Asukoht",
            image: Theme.Icons.location,
            color: model.college.palette.base
        )
    }
    
    @ViewBuilder
    func majorsHeader() -> some View {
        Header(
            label: "Erialad",
            image: Theme.Icons.textBook,
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
