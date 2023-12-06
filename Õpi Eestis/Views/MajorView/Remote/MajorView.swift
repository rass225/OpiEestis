import SwiftUI
import WebKit

struct MajorView: View {
    @EnvironmentObject var appState: AppState
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
                case .personnel: personnelView
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
        .sheet(isPresented: $model.isLoginSuggestionPresented, content: {
            UnauthenticatedView(
                title: Theme.Locale.Favorites.addUnauthenticated,
                action: {
                    appState.signInApple { result in
                        switch result {
                        case .success:
                            DispatchQueue.main.async {
                                model.isLoginSuggestionPresented = false
                            }
                        case let .failure(error):
                            print(error.localizedDescription)
                        }
                    }
                }
            )
        })
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
                outcomesView()
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
    
    @ViewBuilder
    func outcomesView() -> some View {
        if !model.outcomes.isEmpty, model.currentLocale == .estonian {
            VStack(alignment: .leading) {
                outcomesHeader()
                    .padding(.leading, 8)
                HStack {
                    Text(Theme.Locale.Major.outcomesLabel)
                    Spacer()
                    Chevron(type: .normal)
                }
                .setFont(.subheadline, .regular, .rounded)
                .maxWidth()
                .padding()
                .background(Color.white)
                .clipShape(.rect(cornerRadius: 12, style: .continuous))
                .contentShape(.rect)
                .onTapGesture {
                    appState.route(to: .outcomes(college: model.college, model.outcomes))
                }
            }
            .padding(.horizontal)
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
            HStack(alignment: .center, spacing: 0) {
                Theme.Icons.squareStack
                    .setColor(model.college.palette.base.gradient)
                    .setFont(.body, .regular, .rounded)
                    .frame(width: 32, alignment: .leading)
                HStack(spacing: 4) {
                    Text(model.major.eapString)
                    Text(model.major.eapLocale)
                }
                .setFont(.subheadline, .medium, .rounded)
                .setColor(Theme.Colors.black)
                Spacer()
                Text(Theme.Locale.Major.amount)
                    .setFont(.footnote, .regular, .rounded)
                    .setColor(Theme.Colors.gray)
            }
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
            if let curriculumDate = model.major.curriculumDate {
                HStack(alignment: .center, spacing: 0) {
                    Theme.Icons.calendar
                        .setColor(model.college.palette.base.gradient)
                        .setFont(.body, .regular, .rounded)
                        .frame(width: 32, alignment: .leading)
                    Text(curriculumDate)
                        .setFont(.subheadline, .medium, .rounded)
                        .setColor(Theme.Colors.black)
                    Spacer()
                    Text(Theme.Locale.Major.studyYear)
                        .setFont(.footnote, .regular, .rounded)
                        .setColor(Theme.Colors.gray)
                }
            }
            if let studyTypes = model.major.studyTypes {
                HStack(alignment: .center, spacing: 0) {
                    Theme.Icons.studyType
                        .setColor(model.college.palette.base.gradient)
                        .setFont(.body, .regular, .rounded)
                        .frame(width: 32, alignment: .leading)
                    ForEach(studyTypes.indices, id: \.self) { index in
                        Text(studyTypes[index].label)
                            .setFont(.subheadline, .medium, .rounded)
                            .setColor(Theme.Colors.black)
                        if index < studyTypes.count - 1 {
                            Text(", ")
                        }
                    }
                    Spacer()
                    Text(Theme.Locale.Major.studyType)
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
            if model.currentLocale == .estonian {
                ForEach(model.major.description, id: \.self) { element in
                    Text(.init(element))
                        .setFont(.subheadline, .regular, .rounded)
                        .tint(model.college.palette.base)
                }
                .padding()
                .background(Color.white)
                .clipShape(.rect(cornerRadius: 12, style: .continuous))
            } else {
                if let englishgDescription = model.major.descriptionEn {
                    Text(.init(englishgDescription))
                        .setFont(.subheadline, .regular, .rounded)
                        .tint(model.college.palette.base)
                        .padding()
                        .background(Color.white)
                        .clipShape(.rect(cornerRadius: 12, style: .continuous))
                } else {
                    ForEach(model.major.description, id: \.self) { element in
                        Text(.init(element))
                            .setFont(.subheadline, .regular, .rounded)
                            .tint(model.college.palette.base)
                    }
                    .padding()
                    .background(Color.white)
                    .clipShape(.rect(cornerRadius: 12, style: .continuous))
                }
            }
        }
        .padding(.horizontal, 20)
    }
    
    @ViewBuilder
    func modulesContent() -> some View {
        ForEach(model.modules, id: \.id) { item in
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
                            Text("\(model.averageRating.decimals(1))")
                                .setFont(.largeTitle, .semibold, .rounded)
                        } else {
                            Text(Theme.Locale.Major.na)
                                .setFont(.largeTitle, .semibold, .rounded)
                        }
                        
                        Theme.Icons.star
                            .setFont(.title, .regular, .rounded)
                            .setColor(model.college.palette.base.gradient)
                    }
                    HStack(spacing: 2) {
                        Text(String(model.reviews.count))
                        Text(Theme.Locale.Major.amountOfRatings)
                    }
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
                            Text(Theme.Locale.Major.addReview)
                                .setFont(.subheadline, .regular, .rounded)
                                .setColor(Theme.Colors.black)
                            Spacer()
                            Theme.Icons.plus
                                .setColor(model.college.palette.base)
                                .setFont(.body, .medium, .rounded)
                        }
                    }
                } else if model.reviews.compactMap(\.text).isEmpty && model.user == nil {
                    HStack {
                        Text(Theme.Locale.Major.noReviews)
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
                                        Label(Theme.Locale.Major.delete, systemImage: "trash")
                                        
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
        VStack {
            ForEach(model.outcomes, id: \.id) {
                outcomeCell($0.description)
            }
        }
    }
    
    @ViewBuilder
    func websiteContent() -> some View {
        HStack(alignment: .center, spacing: 0){
            Text(Theme.Locale.Major.goToMajorWebsite)
                .setFont(.subheadline, .regular, .rounded)
            Spacer()
            Chevron(type: .link)
        }
        .contentShape(Rectangle())
        .onTapGesture(perform: model.openWebsite)
    }
    
    @ViewBuilder
    func requirementContent() -> some View {
        ForEach(model.requirements, id: \.id) { item in
            if model.currentLocale == .estonian {
                requirementCell(item)
            } else {
                requirementCellEn(item)
            }
        }
    }
    
    var personnelView: some View {
        List {
            Section(content: personnelContent, header: personnelHeader)
        }
    }
    
    @ViewBuilder
    func personnelContent() -> some View {
        ForEach(model.personnel, id: \.id) { person in
            personnelCell(person)
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
        let topText: LocalizedStringKey
        let bottomText: LocalizedStringKey
        let color: Color
        
        init(type: StatType, color: Color) {
            self.color = color
            switch type {
            case .duration(let duration):
                image = Theme.Icons.clock
                topText = Theme.Locale.Duration.getYears(amount: duration)
                bottomText = Theme.Locale.Major.duration
            case .spots(let spots):
                image = Theme.Icons.person
                if spots == 0 {
                    topText = Theme.Locale.Major.infintiy
                } else {
                    topText = "\(spots)"
                }
                
                switch spots {
                case 1: bottomText = Theme.Locale.Major.spotCount
                default: bottomText = Theme.Locale.Major.spotCount
                }
            case .cost(let cost):
                image = cost.currency.icon
                topText = "\(cost.amount)€\(cost.interval.label.lowercased())"
                bottomText = Theme.Locale.Major.cost
            case .eap:
                image = Theme.Icons.squareStack
                topText = "s"
                bottomText = Theme.Locale.Major.amount
            case .language(let language):
                image = Theme.Icons.globe
                topText = language.label
                bottomText = Theme.Locale.Major.language
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
        case eap(count: String, label: LocalizedStringKey)
        case language(lang: Language)
    }
}
