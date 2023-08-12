import SwiftUI

struct CollegeMajorView: View {
    @Environment(\.presentationMode) var dismiss
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
            case .personnel:
                List {
                    Section(content: {
                        if let personnel = model.major.personnel {
                            ForEach(personnel, id: \.self) { person in
                                HStack {
                                    Image.personFill
                                        .setFont(.title, .regular, .rounded)
                                        .setColor(model.college.palette.base.gradient)
                                    VStack(alignment: .leading) {
                                        Text(person.name)
                                            .setFont(.subheadline, .regular, .rounded)
                                        Text(person.title)
                                            .setColor(.gray)
                                            .setFont(.footnote, .regular, .rounded)
                                    }
                                    
                                    Spacer()
                                    if let email = person.email {
                                        Image.envelopeFill
                                            .setFont(.title3, .regular, .rounded)
                                            .setColor(model.college.palette.base.gradient)
                                            .onTapGesture {
                                                model.openMail(email)
                                            }
                                    }
                                    if let phone = person.phone {
                                        Image.phoneFill
                                            .setFont(.title3, .regular, .rounded)
                                            .setColor(model.college.palette.base.gradient)
                                            .onTapGesture {
                                                model.openPhone(phone)
                                            }
                                    }
                                }
                                .padding(.vertical, 2)
                                
                            }
                        }
                    }, header: personnelHeader)
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading, content: backButton)
            ToolbarItem(placement: .principal, content: smallIconView)
            ToolbarItem(placement: .navigationBarTrailing, content: favoritesButton)
        }
        .navigationBarBackButtonHidden()
    }
}

// MARK: - View Components

extension CollegeMajorView {
    @ViewBuilder
    func titleView() -> some View {
        VStack(alignment: .center, spacing: 0){
            Text(model.major.name)
                .setFont(.title3, .semibold, .rounded)
            Text(model.major.level.rawValue.capitalized)
                .setFont(.body, .semibold, .rounded)
                .foregroundStyle(model.college.palette.base.gradient)
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
                    .fill(model.college.palette.base.opacity(0.175).gradient)
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
    func personnelHeader() -> some View {
        header(
            label: OEAppearance.Locale.personnel,
            image: .person2Fill,
            color: model.college.palette.base,
            isTop: true
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
                .frame(width: 24, alignment: .leading)
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
//        ForEach(model.major.modules, id: \.self) { item in
//            ModuleCell(
//                item: item,
//                eapLabel: model.major.eapLocale,
//                color: model.college.palette.base
//            )
//        }
//        .font(.regularSubHeadline)
//        .tint(model.college.palette.base)
        
        ForEach(model.testModules, id: \.self) { item in
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
        ForEach(model.major.requirements, id: \.self) { item in
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

// MARK: - Buttons

extension CollegeMajorView {
    @ViewBuilder
    func backButton() -> some View {
        Button(action: { dismiss.wrappedValue.dismiss() }) {
            Image.chevronLight
                .frame(height: 35)
                .frame(width: 35)
                .setFont(.callout, .bold, .rounded)
                .foregroundStyle(model.college.palette.base.gradient)
        }
    }
    
    @ViewBuilder
    func favoritesButton() -> some View {
        if model.isFavorite {
            Image(systemName: "heart.fill")
                .setFont(.body, .semibold, .rounded)
                .foregroundStyle(model.college.palette.base.gradient)
                .frame(width: 35)
                .onTapGesture(perform: model.removeFavorite)
        } else {
            Image(systemName: "heart")
                .setFont(.body, .bold, .rounded)
                .foregroundStyle(model.college.palette.base.gradient)
                .frame(width: 35)
                .onTapGesture(perform: model.addFavorite)
        }
    }
}

// MARK: - Objects

extension CollegeMajorView {
    struct MajorStat: View {
        let image: Image
        let topText: String
        let bottomText: String
        let color: Color
        
        init(type: StatType, color: Color) {
            self.color = color
            switch type {
            case .duration(let duration):
                image = .clockFill
                if duration.isInt() {
                    topText = "\(Int(duration))a"
                } else {
                    topText = String(format: "%.1f", duration) + "a"
                }
                bottomText = OEAppearance.Locale.duration
            case .spots(let spots):
                image = .personFill
                topText = spots == 0 ? OEAppearance.Locale.infinity : "\(spots)"
                switch spots {
                case 1: bottomText = "Õppekohtade arv"
                default: bottomText = "Õppekohtade arv"
                }
            case .cost(let cost):
                image = cost.currency.icon
                topText = "\(cost.amount)€ \(cost.interval.label)"
                bottomText = "Maksumus"
            case .eap(let eap, let hasEap):
                image = .squareStack
                topText = "\(eap)"
                bottomText = hasEap ? OEAppearance.Locale.eap : OEAppearance.Locale.ekap
            case .language(let language):
                image = .globe
                topText = language.country
                bottomText = OEAppearance.Locale.language
            }
        }
        
        var body: some View {
            HStack(alignment: .center, spacing: 16) {
                image
                    .foregroundStyle(color.gradient)
                    .font(.body)
    //                .frame(width: 16, alignment: .leading)
                Text(topText)
                    .setFont(.subheadline, .medium, .rounded)
                    .foregroundColor(.black)
            }
            .badge(Text(bottomText).setFont(.footnote, .regular, .rounded))
        }
    }

    enum StatType {
        case duration(duration: Double)
        case spots(spots: Int)
        case cost(cost: Cost)
        case eap(count: Int, hasEAP: Bool)
        case language(lang: languagechoice)
    }
}
