import SwiftUI

struct CollegeMajorView: View {
//    @EnvironmentObject var appState: AppState
    @StateObject var model: Model
    @Namespace var animation
    
    var body: some View {
        VStack(spacing: 0) {
            titleView()
            switch model.viewState {
            case .success:
                tabView()
                switch model.tabSelection {
                case .overview: overviewView()
                case .modules: modulesView()
                case .requirements: requirementsView()
                case .outcomes: outcomesView()
                case .personnel: personnelView()
                }
            case .loading:
                loadingView()
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading, content: backButton)
            ToolbarItem(placement: .principal, content: smallIconView)
            ToolbarItem(placement: .navigationBarTrailing, content: favoritesButton)
        }
        .toolbar(.visible, for: .tabBar)
        .toolbarBackground(.visible, for: .tabBar)
        .navigationBarBackButtonHidden()
        .task {
            if !model.didLoad {
                model.start()
            }
        }
    }
}

// MARK: - Tabs

private extension CollegeMajorView {
    @ViewBuilder
    func overviewView() -> some View {
        List {
            Section(content: statsContent, header: statsHeader)
                .listRowSeparator(.hidden)
            Section(content: descriptionContent, header: descriptionHeader)
                .listRowSeparator(.hidden)
            locationsContent()
            Section(content: websiteContent, header: websiteHeader)
        }
    }
    
    @ViewBuilder
    func modulesView() -> some View {
        List {
            Section(content: modulesContent, header: modulesHeader)
        }
    }
    
    @ViewBuilder
    func requirementsView() -> some View {
        List {
            Section(
                content: requirementContent,
                header: requirementsHeader,
                footer: requirementsFooter
            )
        }
    }
    
    @ViewBuilder
    func outcomesView() -> some View {
        List {
            Section(content: outcomesContent, header: outcomesHeader)
        }
    }
    
    @ViewBuilder
    func personnelView() -> some View {
        List {
            Section(content: personnelContent, header: personnelHeader)
        }
    }
    
    @ViewBuilder
    func loadingView() -> some View {
        Spacer()
        ProgressView()
            .progressViewStyle(.circular)
        Spacer()
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
                .setColor(model.college.palette.base.gradient)
        }
        .maxWidth(alignment: .center)
        .padding(.horizontal, 16)
        .padding(.top, 8)
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
        .setColor(model.college.palette.base.gradient)
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
            withTopPadding: true
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
                count: model.major.eapString,
                hasEAP: model.major.hasEap()
            ),
            color: model.college.palette.base
        )
        MajorStat(
            type: .language(lang: model.major.language.label),
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
        if let curriculumDate = model.major.curriculumDate {
            HStack(alignment: .center, spacing: 16) {
                Image(systemName: "calendar")
                    .setColor(model.college.palette.base.gradient)
                    .setFont(.body, .regular, .rounded)
                Text(curriculumDate)
                    .setFont(.subheadline, .medium, .rounded)
                    .setColor(Theme.Colors.black)
            }
            .badge(Text("Õppeaasta").setFont(.footnote, .regular, .rounded))
        }
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
        if let modules = model.major.modules {
            ForEach(modules, id: \.self) { item in
                ModuleCell(
                    item: item,
                    eapLabel: model.major.eapLocale,
                    color: model.college.palette.base
                )
            }
            .setFont(.subheadline, .regular, .rounded)
            .tint(model.college.palette.base)
        }
    }
    
    @ViewBuilder
    func outcomesContent() -> some View {
        if let outcomes = model.major.outcomes {
            ForEach(outcomes, id: \.self) {
                outcomeCell($0)
            }
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
    
    @ViewBuilder
    func personnelContent() -> some View {
        if let personnel = model.major.personnel {
            ForEach(personnel, id: \.self) { person in
                personnelCell(person)
            }
        }
    }
    
    @ViewBuilder
    func locationsContent() -> some View {
        ForEach(model.mapLocations.indices, id: \.self) { index in
            if index == 0 {
                Section(content: {
                    HStack{
                        Text(model.mapLocations[index].address)
                            .setFont(.subheadline, .regular, .rounded)
                            .setColor(Theme.Colors.black)
                        Spacer()
                        Chevron(type: .link)
                    }
                    .contentShape(Rectangle())
                    .onTapGesture{ model.openMap(model.mapLocations[index].appleMapLink) }
                    Image(uiImage: model.mapLocations[index].snapshot)
                        .resizable()
                        .fit()
                        .listRowInsets(.zero)
                        .listRowSeparator(.hidden)
                        .overlay {
                            Image("pin")
                                .resizable()
                                .fit()
                                .frame(width: 32, height: 40)
                                .setColor(model.college.palette.base.gradient)
                                .offset(x: 0, y: -16)
                        }
                        .onTapGesture{ model.openMap(model.mapLocations[index].appleMapLink) }
                }, header: locationsHeader)
            } else {
                Section {
                    HStack{
                        Text(model.mapLocations[index].address)
                            .setFont(.subheadline, .regular, .rounded)
                            .setColor(Theme.Colors.black)
                        Spacer()
                        Chevron(type: .link)
                    }
                    .contentShape(Rectangle())
                    .onTapGesture{ model.openMap(model.mapLocations[index].appleMapLink) }
                    Image(uiImage: model.mapLocations[index].snapshot)
                        .resizable()
                        .fit()
                        .listRowInsets(.zero)
                        .listRowSeparator(.hidden)
                        .onTapGesture{ model.openMap(model.mapLocations[index].appleMapLink) }
                }
            }
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
        if let header = requirement.header {
            DisclosureGroup(content: {
                HStack(alignment: .top, spacing: 4){
                    Text(.init(requirement.term))
                        .tint(model.college.palette.base)
                    Spacer()
                    if let percentage = requirement.percentage {
                        Text("\(percentage)%")
                            .setFont(.subheadline, .medium, .rounded)
                    }
                }
                .setColor(Theme.Colors.black)
                .setFont(.subheadline, .regular, .rounded)
                .listRowInsets(.init(top: 16, leading: 0, bottom: 16, trailing: 0))
            }, label: {
                Text(.init(header))
                    .setColor(Theme.Colors.black)
                    .setFont(.subheadline, .regular, .rounded)
            })
        } else {
            HStack(alignment: .top, spacing: 4){
                Text(.init(requirement.term))
                    .tint(model.college.palette.base)
                Spacer()
                if let percentage = requirement.percentage {
                    Text("\(percentage)%")
                        .setFont(.subheadline, .medium, .rounded)
                }
            }
            .setColor(Theme.Colors.black)
            .setFont(.subheadline, .regular, .rounded)
        }
        
    }
    
    @ViewBuilder
    func outcomeCell(_ outcome: String) -> some View {
        Text(.init(outcome))
            .setFont(.subheadline, .regular, .rounded)
            .setColor(Theme.Colors.black)
    }
    
    @ViewBuilder
    func personnelCell(_ person: Personnel) -> some View {
        HStack(alignment: .top, spacing: 8) {
            if let photo = person.photo, let url = URL(string: photo) {
                if let cachedImage = model.imageCache[url] {
                    Image(uiImage: cachedImage)
                        .resizable()
                        .fill()
                        .frame(width: 40, height: 40, alignment: .top)
                        .clipShape(Circle())
                        .padding(.trailing, 8)
                } else {
                    AsyncImage(
                        url: url,
                        content: { image in
                            image
                                .resizable()
                                .fill()
                                .frame(width: 40, height: 40, alignment: .top)
                                .clipShape(Circle())
                                .padding(.trailing, 8)
                        },
                        placeholder: {
                            Theme.Icons.person
                                .setFont(.title2, .regular, .rounded)
                                .setColor(model.college.palette.base.gradient)
                                .frame(width: 40, height: 40)
                                .background(model.college.palette.base.opacity(0.175))
                                .clipShape(Circle())
                                .padding(.trailing, 8)
                        })
                }
            } else {
                Theme.Icons.person
                    .setFont(.title2, .regular, .rounded)
                    .setColor(model.college.palette.base.gradient)
                    .frame(width: 40, height: 40)
                    .background(model.college.palette.base.opacity(0.175))
                    .clipShape(Circle())
                    .padding(.trailing, 8)
            }

            VStack(alignment: .leading) {
                Text(person.name)
                    .setFont(.subheadline, .regular, .rounded)
                Text(person.title)
                    .setColor(.gray)
                    .setFont(.footnote, .regular, .rounded)
            }
            .maxWidth(alignment: .leading)
            
            HStack(spacing: 6) {
                if let email = person.email {
                    Theme.Icons.envelope
                        .modifier(ContactButtonModifier(color: model.college.palette.base))
                        .onTapGesture {
                            model.openMail(email)
                        }
                }
                if let phone = person.phone {
                    Theme.Icons.phone
                        .modifier(ContactButtonModifier(color: model.college.palette.base))
                        .onTapGesture {
                            model.openPhone(phone)
                        }
                }
            }
        }
        .padding(.vertical, 4)
    }
}

// MARK: - Buttons

extension CollegeMajorView {
    @ViewBuilder
    func backButton() -> some View {
        BackButton(color: model.college.palette.base)
    }
    
    @ViewBuilder
    func favoritesButton() -> some View {
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
                image = Theme.Icons.clock
                if duration.isInt() {
                    topText = "\(Int(duration)) aastat"
                } else {
                    topText = String(format: "%.1f", duration) + " aastat"
                }
                bottomText = OEAppearance.Locale.duration
            case .spots(let spots):
                image = Theme.Icons.person
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
                image = Theme.Icons.squareStack
                topText = "\(eap) \(hasEap ? OEAppearance.Locale.eap : OEAppearance.Locale.ekap)"
                bottomText = "Maht"
            case .language(let language):
                image = Theme.Icons.globe
                topText = language
                bottomText = OEAppearance.Locale.language
            }
        }
        
        var body: some View {
            HStack(alignment: .center, spacing: 16) {
                image
                    .setColor(color.gradient)
                    .setFont(.body, .regular, .rounded)
                Text(topText)
                    .setFont(.subheadline, .medium, .rounded)
                    .setColor(Theme.Colors.black)
            }
            .badge(Text(bottomText).setFont(.footnote, .regular, .rounded))
        }
    }

    enum StatType {
        case duration(duration: Double)
        case spots(spots: Int)
        case cost(cost: Cost)
        case eap(count: String, hasEAP: Bool)
        case language(lang: String)
    }
}

// MARK: - Modifiers

private extension CollegeMajorView {
    struct ContactButtonModifier: ViewModifier {
        let color: Color
        func body(content: Content) -> some View {
            content
                .setFont(.body, .regular, .rounded)
                .setColor(color.gradient)
                .padding(10)
                .background(
                    Circle()
                        .fill(color.opacity(0.175))
                )
        }
    }
}
