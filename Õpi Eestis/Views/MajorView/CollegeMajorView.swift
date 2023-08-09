import SwiftUI

struct CollegeMajorView: View {
    @StateObject var model: Model
    @Namespace var animation
    
    var body: some View {
        VStack(spacing: 0) {
            titleView()
                .padding(.top, 8)
            tabView()
            switch model.tabSelection {
            case .overview:
                List {
                    Section(content: statsContent, header: statsHeader)
                    Section(content: descriptionContent, header: descriptionHeader)
                    Section(content: websiteContent, header: websiteHeader)
                }
            case .modules:
                List {
                    Section(content: modulesContent, header: modulesHeader)
                }
            case .requirements:
                List {
                    Section(
                        content: requirementContent,
                        header: requirementsHeader,
                        footer: requirementsFooter
                    )
                }
            case .outcomes:
                List {
                    Section(content: outcomesContent, header: outcomesHeader)
                }
            }
        }
        .toolbar {
            AppToolbarItem(.dismiss, color: model.college.palette.base)
            ToolbarItem(placement: .principal, content: smallIconView)
            ToolbarItem(placement: .navigationBarTrailing, content: favoritesButton)
        }
        .navigationBarBackButtonHidden(true)
    }
}

// MARK: - View Components

extension CollegeMajorView {
    @ViewBuilder
    func favoritesButton() -> some View {
        if model.favorites.contains(model.major) {
            Image.starFill
                .foregroundStyle(model.college.palette.base.gradient)
                .onTapGesture {
                    model.userDefaultsManager.removeFavorite(
                        college: model.college,
                        majorName: model.college.name,
                        key: model.college.jsonKeys.favorites
                    )
                }
        } else {
            Image.star
                .foregroundStyle(model.college.palette.base.gradient)
                .onTapGesture {
                    model.userDefaultsManager.addFavorite(
                        favorite: .init(
                            college: model.college,
                            majors: [model.major]
                        ),
                        key: model.college.jsonKeys.favorites
                    )
                }
        }
    }
    @ViewBuilder
    func titleView() -> some View {
        VStack(alignment: .center, spacing: 0){
            Text(model.major.name)
                .setFont(.title3, .semibold, .rounded)
            Text(model.major.level.rawValue.capitalized)
                .setFont(.body, .semibold, .rounded)
                .foregroundColor(model.college.palette.base)
        }
        .maxWidth(alignment: .center)
        .padding(.horizontal, 16)
    }
    
    @ViewBuilder
    func tabView() -> some View {
        HStack {
            ForEach(model.tabPool, id: \.self) { tab in
                tab.image
                    .maxSize()
                    .background {
                        if model.tabSelection == tab {
                            Capsule()
                                .fill(Color.white)
                                .matchedGeometryEffect(id: "TAB", in: animation)
                        }
                    }
                    .contentShape(Capsule())
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.2)) {model.tabSelection = tab }
                    }
            }
        }
        .foregroundStyle(model.college.palette.base.gradient)
        .padding(2)
        .frame(height: 40)
        .background(
            ZStack {
                Capsule(style: .continuous)
                    .fill(Color.white)
                Capsule(style: .continuous)
                    .fill(model.college.palette.base.opacity(0.15).gradient)
            }
        )
        .padding(.horizontal, 16)
        .offset(x: 0, y: 20)
        .zIndex(100)
//        .padding(.bottom, 8)
    }
    
    @ViewBuilder
    func smallIconView() -> some View {
        CollegeView.LogoView(
            school: model.college,
            image: model.college.logoRef)
    }
}

// MARK: - Headers

extension CollegeMajorView {
    @ViewBuilder
    func statsHeader() -> some View {
        header(
            label: "Üldandmed",
            image: .requirementsFill,
            color: model.college.palette.base,
            isTop: true
        )
        .opacity(0)
    }
    
    @ViewBuilder
    func descriptionHeader() -> some View {
        header(
            label: OEAppearance.Locale.title.description,
            image: .docFill,
            color: model.college.palette.base,
            isTop: false
        )
    }
    
    @ViewBuilder
    func modulesHeader() -> some View {
        header(
            label: OEAppearance.Locale.title.modules,
            image: .stackFill,
            color: model.college.palette.base,
            isTop: true
        )
    }
    
    @ViewBuilder
    func requirementsHeader() -> some View {
        header(
            label: OEAppearance.Locale.acceptance,
            image: .requirementsFill,
            color: model.college.palette.base,
            isTop: true
        )
    }
    
    @ViewBuilder
    func outcomesHeader() -> some View {
        header(
            label: OEAppearance.Locale.title.outcomes,
            image: .outcomesFill,
            color: model.college.palette.base,
            isTop: true
        )
    }
    
    @ViewBuilder
    func websiteHeader() -> some View {
        header(
            label: OEAppearance.Locale.homepage,
            image: .houseFill,
            color: model.college.palette.base,
            isTop: false
        )
    }
    
    @ViewBuilder
    func header(
        label: String,
        image: Image,
        color: Color,
        isTop: Bool
    ) -> some View {
        HStack(spacing: 8){
            image
                .font(.body)
                .setColor(color.gradient)
                .frame(width: 20, alignment: .leading)
            Text(label.capitalized)
                .setFont(.body, .semibold, .rounded)
                .textCase(.none)
                .foregroundColor(.black)
            Spacer()
        }
        .padding(.top, isTop ? 32 : 0)
        .listRowInsets(.init(top: 8, leading: 8, bottom: 8, trailing: 8))
    }
}

// MARK: - Content

extension CollegeMajorView {
    @ViewBuilder
    func statsContent() -> some View {
        MajorStat(
            type: .duration(duration: model.major.duration),
            color: model.college.palette.base
        )
        MajorStat(
            type: .eap(
                count: model.eapTopLabel,
                hasEAP: model.major.hasEap()
            ),
            color: model.college.palette.base
        )
        MajorStat(
            type: .language(lang: model.major.language),
            color: model.college.palette.base
        )
        MajorStat(
            type: .spots(spots: model.major.spots),
            color: model.college.palette.base
        )
        MajorStat(
            type: .cost(cost: model.major.cost),
            color: model.college.palette.base
        )
    }
    
    @ViewBuilder
    func descriptionContent() -> some View {
        ForEach(model.major.description, id: \.self) { element in
            Text(.init(element))
                .setFont(.subheadline, .regular, .rounded)
                .tint(model.college.palette.base)
        }
    }
    
    @ViewBuilder
    func modulesContent() -> some View {
        ForEach(model.major.modules) { item in
            ModuleCell(
                item: item,
                eapLabel: model.major.eapLocale,
                color: model.college.palette.base
            )
        }
        .font(.regularSubHeadline)
        .tint(model.college.palette.base)
    }
    
    @ViewBuilder
    func outcomesContent() -> some View {
        ForEach(model.major.outcomes, id: \.self) {
            outcomeCell($0)
        }
    }
    
    @ViewBuilder
    func websiteContent() -> some View {
        HStack(alignment: .center, spacing: 0){
            Text("Tutvu lähemalt erialaga kooli kodulehel")
                .setFont(.subheadline, .regular, .rounded)
            Spacer()
            Chevron(type: .link)
        }
        .contentShape(Rectangle())
        .onTapGesture(perform: model.openWebsite)
    }
    
    @ViewBuilder
    func requirementContent() -> some View {
        ForEach(model.major.requirements) { item in
            requirementCell(item)
        }
    }
}

// MARK: - Footers

extension CollegeMajorView {
    @ViewBuilder
    func requirementsFooter() -> some View {
        Text("Protsendiga tähistatud kriteeriumid on sisseastumisprotsessiga seotud. Ülejäänud vastuvõtutingimused on eelduseks kandideerimisel.")
    }
}

// MARK: - Cells

extension CollegeMajorView {
    @ViewBuilder
    func requirementCell(_ requirement: Requirements) -> some View {
        HStack{
            Text(.init(requirement.term))
                .tint(model.college.palette.base)
            Spacer()
            if let percentage = requirement.percentage {
                Text("\(percentage)%")
            }
        }
        .foregroundColor(.black)
        .setFont(.subheadline, .regular, .rounded)
    }
    
    @ViewBuilder
    func outcomeCell(_ outcome: String) -> some View {
        Text(outcome)
            .setFont(.subheadline, .regular, .rounded)
            .foregroundColor(.black)
    }
}
