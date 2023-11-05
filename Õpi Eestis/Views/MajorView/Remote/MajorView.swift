import SwiftUI
import WebKit

struct MajorView: View {
    @StateObject var model: Model
    @Namespace var animation
    @State var easterEggPresented = false
    
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
                case .reviews: reviewsView()
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
        .sheet(isPresented: $model.isNewReviewViewPresented, content: newReviewView)
    }
}

// MARK: - Tabs

private extension MajorView {
    var overviewView: some View {
        ScrollView {
            VStack(spacing: 32) {
                statsContent()
                youtubeView()
                vimeoView()
                spotifyView()
                facebookView()
                descriptionContent()
                personnelContent()
                locationsContent()
                    
            }
            
            .padding(.top, 68)
            .padding(.bottom, 32)
        }
        .background(Theme.Colors.systemGray)
    }
    
    var modulesView: some View {
        List {
            Section(content: modulesContent, header: modulesHeader)
        }
    }
    
    var requirementsView: some View {
        List {
            Section(content: requirementContent, header: requirementsHeader)
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
}

// MARK: - Content

extension MajorView {
    @ViewBuilder
    func statsContent() -> some View {
        VStack(alignment: .leading, spacing: 24) {
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
                    Spacer()
                    Text("Õppeaasta")
                        .setFont(.footnote, .regular, .rounded)
                        .setColor(Theme.Colors.gray)
                }
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
                    Spacer()
                    Text("Õppevorm")
                        .setFont(.footnote, .regular, .rounded)
                        .setColor(Theme.Colors.gray)
                }
            }
        }
        .maxWidth(alignment: .leading)
        .padding()
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 12, style: .continuous))
        .padding(.horizontal, 20)
    }
    
    @ViewBuilder
    func descriptionContent() -> some View {
        VStack {
            descriptionHeader()
                .padding(.leading, 8)
            ForEach(model.major.description, id: \.self) { element in
                Text(.init(element))
                    .setFont(.subheadline, .regular, .rounded)
                    .tint(model.college.palette.base)
            }
            .padding()
            .background(Color.white)
            .clipShape(.rect(cornerRadius: 12, style: .continuous))
        }
        .padding(.horizontal, 20)
    }
    
    @ViewBuilder
    func modulesContent() -> some View {
        ForEach(model.modules, id: \.self) { item in
            ModuleCell(
                item: item,
                eapLabel: model.major.eapLocale,
                color: model.college.palette.base
            )
        }
        .setFont(.subheadline, .semibold, .rounded)
        .tint(model.college.palette.base)
    }
    
    @ViewBuilder
    func reviewsView() -> some View {
        List {
            Section {
                VStack {
                    HStack {
                        if model.averageRating > 0 {
                            Text("\(model.averageRating, specifier: "%.1f")")
                                .setFont(.largeTitle, .semibold, .rounded)
                        } else {
                            Text("N/A")
                                .setFont(.largeTitle, .semibold, .rounded)
                        }
                        
                        Image(systemName: "star.fill")
                            .setFont(.title, .regular, .rounded)
                            .setColor(model.college.palette.base.gradient)
                    }
                    Text("\(model.reviews.count) hinnangut")
                        .setColor(.gray)
                        .setFont(.footnote, .regular, .rounded)
                }
                .padding(.top)
                .maxWidth()
            }
            .listRowBackground(Color.clear)
            
            
            Section(content: {
                if model.reviews.compactMap(\.text).isEmpty && model.user != nil {
                    Button(action: model.openNewReviewView) {
                        HStack {
                            Text("Lisa arvustus")
                                .setFont(.subheadline, .regular, .rounded)
                                .setColor(Theme.Colors.black)
                            Spacer()
                            Image(systemName: "plus")
                                .setColor(model.college.palette.base)
                                .setFont(.body, .medium, .rounded)
                        }
                    }
                } else if model.reviews.compactMap(\.text).isEmpty && model.user == nil {
                    HStack {
                        Text("Ühtegi arvustust pole veel lisatud")
                            .setFont(.subheadline, .regular, .rounded)
                            .setColor(Theme.Colors.black)
                    }
                } else {
                    ForEach(model.reviews, id: \.id) { review in
                        reviewCell(review)
                            .swipeActions(content: {
                                if review.user == model.user {
                                    Button(role: .destructive, action: {
                                        model.deleteReview(review)
                                    }, label: {
                                        Label("Kustuta", systemImage: "trash")
                                        
                                    })
                                    .tint(.red)
                                }
                            })
                    }
                    .listRowInsets(.sixteen)
                }
            }, header: { reviewListHeader() })
        }
    }
    
    @ViewBuilder
    func outcomesContent() -> some View {
        ForEach(model.outcomes, id: \.self) {
            outcomeCell($0.description)
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
        ForEach(model.requirements, id: \.self) { item in
            requirementCell(item)
        }
    }
    
    @ViewBuilder
    func personnelContent() -> some View {
        VStack {
            personnelHeader()
                .padding(.leading, 28)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(model.personnel, id: \.self) { person in
                        personnelCell(person)
                    }
                }.padding(.horizontal, 20)
            }
        }
    }
    
    @ViewBuilder
    func locationsContent() -> some View {
        VStack {
            locationsHeader()
                .padding(.leading, 8)
            Image(uiImage: model.standardMapSnapshot)
                .resizable()
                .fill()
                .listRowInsets(.zero)
                .listRowSeparator(.hidden)
                .overlay(alignment: .topTrailing, content: expandIcon)
                .background(Color.white)
                .clipShape(.rect(cornerRadius: 12, style: .continuous))
        }
        .padding(.horizontal, 20)
    }
}

// MARK: - Objects

extension MajorView {
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
                topText = "\(cost.amount)€\(cost.interval.label.lowercased())"
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
            HStack(alignment: .center, spacing: 0) {
                image
                    .setColor(color.gradient)
                    .setFont(.body, .regular, .rounded)
                    .frame(width: 32, alignment: .leading)
                Text(topText)
                    .setFont(.subheadline, .medium, .rounded)
                    .setColor(Theme.Colors.black)
                Spacer()
                Text(bottomText)
                    .setFont(.footnote, .regular, .rounded)
                    .setColor(Theme.Colors.gray)
            }
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
