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
    func reviewsHeader() -> some View {
        Header(
            label: "Arvustus",
            image: Theme.Icons.location,
            color: model.college.palette.base,
            withTopPadding: false
        )
    }
    
    @ViewBuilder
    func ratingsHeader() -> some View {
        Header(
            label: "Hinnang",
            image: Theme.Icons.location,
            color: model.college.palette.base,
            withTopPadding: false
        )
    }
}
