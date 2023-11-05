import SwiftUI
import WebKit

struct CollegeMajorView: View {
    @StateObject var model: Model
    @Namespace var animation
    @State private var easterEggPresented = false
    
    var body: some View {
        VStack(spacing: 0) {
            titleView()
            switch model.viewState {
            case .success:
                tabView()
                switch model.tabSelection {
                case .overview: overviewView
                case .modules: modulesView
                case .requirements: requirementsView
                case .outcomes: outcomesView
                case .personnel: personnelView
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
        .toolbarBackground(.hidden, for: .navigationBar)
        .navigationBarBackButtonHidden()
        .sheet(isPresented: $model.isMapViewPresented, content: {
            CollegeMapView(model: model.createCollegeMapViewModel())
        })
        .sheet(item: $model.selectedPersonnel) { person in
            personDetailView(person)
        }
        .task {
            if !model.didLoad {
                model.start()
            }
        }
    }
}

// MARK: - Tabs

private extension CollegeMajorView {
    var overviewView: some View {
        List {
            Section(content: statsContent, header: statsHeader)
                .listRowSeparator(.hidden)
            if let videoId = model.major.videoId {
                Section {
                    YouTubeView(videoID: videoId)
                        .frame(height: 256)
                        .listRowInsets(.zero)
                }
            }
            if let vimeoId = model.major.vimeoId {
                Section {
                    VimeoView(videoID: vimeoId, color: model.college.palette.base)
                        .frame(height: 256)
                        .listRowInsets(.zero)
                        .listRowBackground(Color.clear)
                }
            }
            if let spotifyPath = model.major.spotifyPath {
                Section {
                    SpotifyView(urlString: spotifyPath)
                        .frame(height: 232)
                        .listRowInsets(.zero)
                        .listRowBackground(Color.clear)
                }
            }
            if let facebookWatchId = model.major.facebookWatchId {
                Section {
                    FacebookVideoView(videoURL: facebookWatchId)
                        .frame(height: 190)
                        .listRowInsets(.zero)
                        .listRowBackground(Color.clear)
                }
            }
            Section(content: descriptionContent, header: descriptionHeader)
                .listRowSeparator(.hidden)
            locationsContent()
            Section(content: websiteContent, header: websiteHeader)
        }
    }
    
    var modulesView: some View {
        List {
            Section(content: modulesContent, header: modulesHeader)
        }
    }
    
    var requirementsView: some View {
        List {
            Section(
                content: requirementContent,
                header: requirementsHeader
            )
        }
    }
    
    var outcomesView: some View {
        List {
            Section(content: outcomesContent, header: outcomesHeader)
        }
    }
    
    var personnelView: some View {
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
                .multilineTextAlignment(.center)
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
            ForEach(model.availableTabs, id: \.self) { tab in
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
            label: Theme.Locale.Major.description,
            image: Theme.Icons.docs,
            color: model.college.palette.base,
            withTopPadding: false
        )
    }
    
    @ViewBuilder
    func modulesHeader() -> some View {
        Header(
            label: Theme.Locale.Major.modules,
            image: Theme.Icons.stack,
            color: model.college.palette.base,
            withTopPadding: true
        )
    }
    
    @ViewBuilder
    func requirementsHeader() -> some View {
        Header(
            label: Theme.Locale.Major.requirements,
            image: Theme.Icons.requirements,
            color: model.college.palette.base,
            withTopPadding: true
        )
    }
    
    @ViewBuilder
    func outcomesHeader() -> some View {
        Header(
            label: Theme.Locale.Major.outcomes,
            image: Theme.Icons.outcomes,
            color: model.college.palette.base,
            withTopPadding: true
        )
    }
    
    @ViewBuilder
    func websiteHeader() -> some View {
        Header(
            label: Theme.Locale.Major.homepage,
            image: Theme.Icons.house,
            color: model.college.palette.base,
            withTopPadding: false
        )
    }
    
    @ViewBuilder
    func personnelHeader() -> some View {
        Header(
            label: Theme.Locale.Major.personnel,
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
            HStack(alignment: .center, spacing: 0) {
                Image(systemName: "calendar")
                    .setColor(model.college.palette.base.gradient)
                    .setFont(.body, .regular, .rounded)
                    .frame(width: 32, alignment: .leading)
                Text(curriculumDate)
                    .setFont(.subheadline, .medium, .rounded)
                    .setColor(Theme.Colors.black)
            }
            .badge(Text("Õppeaasta").setFont(.footnote, .regular, .rounded))
        }
        if let studyType = model.major.studyType {
            HStack(alignment: .center, spacing: 0) {
                Image(systemName: "door.left.hand.closed")
                    .setColor(model.college.palette.base.gradient)
                    .setFont(.body, .regular, .rounded)
                    .frame(width: 32, alignment: .leading)
                Text(studyType.capitalizedSentence)
                    .setFont(.subheadline, .medium, .rounded)
                    .setColor(Theme.Colors.black)
            }
            .badge(Text("Õppevorm").setFont(.footnote, .regular, .rounded))
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
            .setFont(.subheadline, .semibold, .rounded)
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
        Section(content: {
            Image(uiImage: model.standardMapSnapshot)
                .resizable()
                .fill()
                .listRowInsets(.zero)
                .listRowSeparator(.hidden)
                .overlay(alignment: .topTrailing, content: expandIcon)
        })
    }
    
    @ViewBuilder
    func expandIcon() -> some View {
        Image(systemName: "arrow.up.left.and.down.right.and.arrow.up.right.and.down.left")
            .setFont(.title2, .medium, .rounded)
            .setColor(model.college.palette.base.gradient)
            .padding(4)
            .background(.regularMaterial)
            .clipShape(.rect(cornerRadius: 6, style: .continuous))
            .padding(16)
            .padding([.leading, .bottom])
            .contentShape(Rectangle())
            .onTapGesture(perform: model.presentMapView)
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
            .setFont(.subheadline, .semibold, .rounded)
            .tint(model.college.palette.base)
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
                            placeholderPerson()
                                .padding(.trailing, 8)
                        })
                }
            } else {
                placeholderPerson()
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
        .contentShape(Rectangle())
        .onTapGesture {
            model.selectedPersonnel = person
        }
    }
    
    @ViewBuilder
    func personDetailView(_ person: Personnel) -> some View {
        GeometryReader { geo in
            VStack {
                VStack(spacing: 0) {
                    if let photo = person.photo, let url = URL(string: photo) {
                        if let cachedImage = model.imageCache[url] {
                            if easterEggPresented {
                                Image("Gollum")
                                    .resizable()
                                    .fill()
                                    .frame(width: 160, height: 160, alignment: .top)
                                    .clipShape(Circle())
                                    .onTapGesture {
                                        easterEggPresented.toggle()
                                    }
                            } else {
                                Image(uiImage: cachedImage)
                                    .resizable()
                                    .fill()
                                    .frame(width: 160, height: 160, alignment: .top)
                                    .clipShape(Circle())
                                    .onTapGesture(count: 2, perform: {
                                        if person.name == "Kaire Kollom" {
                                            easterEggPresented.toggle()
                                        }
                                    })
                            }
                        } else {
                            AsyncImage(
                                url: url,
                                content: { image in
                                    image
                                        .resizable()
                                        .fill()
                                        .frame(width: 160, height: 160, alignment: .top)
                                        .clipShape(Circle())
                                },
                                placeholder: {
                                    placeholderPerson(size: 160, font: .largeTitle)
                                })
                        }
                    } else {
                        placeholderPerson(size: 160, font: .system(size: 75))
                    }
                }
                .padding(.top, geo.size.height / 6)
                .padding(.bottom, 8)
                
                VStack(alignment: .center) {
                    Text(person.name)
                        .setFont(.title, .regular, .rounded)
                    Text(person.title)
                        .setColor(.gray)
                        .setFont(.subheadline, .regular, .rounded)
                        .multilineTextAlignment(.center)
                }
                .maxWidth()
                .padding(.horizontal)
                .padding(.bottom)
                
                HStack(spacing: 16) {
                    if let email = person.email {
                        Theme.Icons.envelope
                            .modifier(ContactButtonModifier(
                                color: model.college.palette.base,
                                font: .title3
                            ))
                            .onTapGesture {
                                model.openMail(email)
                            }
                    }
                    if let phone = person.phone {
                        Theme.Icons.phone
                            .modifier(ContactButtonModifier(
                                color: model.college.palette.base,
                                font: .title3
                            ))
                            .onTapGesture {
                                model.openPhone(phone)
                            }
                    }
                }
                Spacer()
            }
            .maxSize()
        }
        .presentationDetents([.medium])
        .presentationDragIndicator(.visible)
        .presentationCornerRadius(16)
    }
    
    @ViewBuilder
    func placeholderPerson(size: CGFloat = 40, font: Font = .title2) -> some View {
        Theme.Icons.person
            .setFont(font, .regular, .rounded)
            .setColor(model.college.palette.base.gradient)
            .frame(width: size, height: size)
            .background(model.college.palette.base.opacity(0.175))
            .clipShape(Circle())
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
                bottomText = Theme.Locale.Major.description
            case .spots(let spots):
                image = Theme.Icons.person
                topText = spots == 0 ? Theme.Locale.Major.description : "\(spots)"
                switch spots {
                case 1: bottomText = "Õppekohtade arv"
                default: bottomText = "Õppekohtade arv"
                }
            case .cost(let cost):
                image = cost.currency.icon
                topText = "\(cost.amount)€\(cost.interval.label.lowercased())"
                bottomText = "Maksumus"
            case .eap(let eap, let hasEap):
                image = Theme.Icons.squareStack
                topText = "\(eap) \(hasEap ? Theme.Locale.Major.description : Theme.Locale.Major.description)"
                bottomText = "Maht"
            case .language(let language):
                image = Theme.Icons.globe
                topText = language
                bottomText = Theme.Locale.Major.description
            }
        }
        
        var body: some View {
            HStack(alignment: .center, spacing: 0) {
                image
                    .setColor(color.gradient)
                    .setFont(.body, .regular, .rounded)
                    .frame(width: 32, alignment: .leading)
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
        let font: Font
        
        init(
            color: Color,
            font: Font = .body
        ) {
            self.color = color
            self.font = font
        }
        func body(content: Content) -> some View {
            content
                .setFont(font, .regular, .rounded)
                .setColor(color.gradient)
                .padding(10)
                .background(
                    Circle()
                        .fill(color.opacity(0.175))
                )
        }
    }
}
