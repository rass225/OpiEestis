import SwiftUI

extension PathFinderView {
    struct ResultView: View {
        @EnvironmentObject var appState: AppState
        @StateObject var model: Model
        var body: some View {
            List {
                header()
                userCharacteristics()
                recommendedMajors()
                careerInsights()
                viewHistoryButton()
            }
        }
    }
}

extension PathFinderView.ResultView {
    @ViewBuilder
    func header() -> some View {
        Section(content: {
            EmptyView()
        }, header: {
            Text(Theme.Locale.PathFinder.Result.title)
                .setColor(.black)
                .setFont(.largeTitle, .semibold, .rounded)
                .maxWidth()
                .textCase(.none)
                .padding(.top, 40)
                .padding(.bottom, 32)
        })
        .listRowBackground(Color.clear)
        .listRowInsets(.zero)
    }
    
    @ViewBuilder
    func userCharacteristics() -> some View {
        Section(content: {
            VStack(spacing: 4) {
                VStack(spacing: 16) {
                    characteristicsResultHeader(
                        minLabel: Theme.Locale.PathFinder.Result.structure,
                        maxLabel: Theme.Locale.PathFinder.Result.innovation,
                        value: model.userCharacteristics.structureAndInnovation
                    )
                    progressView(value: model.userCharacteristics.structureAndInnovation)
                    characteristicsResultFooter(label: model.structureAndInnovationFooter())
                }
                .padding()
                .maxWidth()
                .background(Color.white)
                .clipShape(.rect(cornerRadius: 12, style: .continuous))
                
                VStack(spacing: 16) {
                    characteristicsResultHeader(
                        minLabel: Theme.Locale.PathFinder.Result.academia,
                        maxLabel: Theme.Locale.PathFinder.Result.career,
                        value: model.userCharacteristics.academiaAndCareer
                    )
                    progressView(value: model.userCharacteristics.academiaAndCareer)
                    characteristicsResultFooter(label: model.academiaAndCareerFooter())
                }
                .padding()
                .maxWidth()
                .background(Color.white)
                .clipShape(.rect(cornerRadius: 12, style: .continuous))
                
                VStack(spacing: 16) {
                    characteristicsResultHeader(
                        minLabel: Theme.Locale.PathFinder.Result.independence,
                        maxLabel: Theme.Locale.PathFinder.Result.collaboration,
                        value: model.userCharacteristics.independenceAndCollaboration
                    )
                    progressView(value: model.userCharacteristics.independenceAndCollaboration)
                    characteristicsResultFooter(label: model.independenceAndCollaborationFooter())
                }
                .padding()
                .maxWidth()
                .background(Color.white)
                .clipShape(.rect(cornerRadius: 12, style: .continuous))
                
                VStack(spacing: 16) {
                    characteristicsResultHeader(
                        minLabel: Theme.Locale.PathFinder.Result.local,
                        maxLabel: Theme.Locale.PathFinder.Result.global,
                        value: model.userCharacteristics.localAndGlobal
                    )
                    progressView(value: model.userCharacteristics.localAndGlobal)
                    characteristicsResultFooter(label: model.localAndGlobalFooter())
                }
                .padding()
                .maxWidth()
                .background(Color.white)
                .clipShape(.rect(cornerRadius: 12, style: .continuous))
                
                VStack(spacing: 16) {
                    characteristicsResultHeader(
                        minLabel: Theme.Locale.PathFinder.Result.traditional,
                        maxLabel: Theme.Locale.PathFinder.Result.technological,
                        value: model.userCharacteristics.lowAndHighTech
                    )
                    progressView(value: model.userCharacteristics.lowAndHighTech)
                    characteristicsResultFooter(label: model.traditionalAndTechnologicalFooter())
                }
                .padding()
                .maxWidth()
                .background(Color.white)
                .clipShape(.rect(cornerRadius: 12, style: .continuous))
                
                VStack(spacing: 16) {
                    characteristicsResultHeader(
                        minLabel: Theme.Locale.PathFinder.Result.theoretical,
                        maxLabel: Theme.Locale.PathFinder.Result.applied,
                        value: model.userCharacteristics.theoreticalAndApplied
                    )
                    progressView(value: model.userCharacteristics.theoreticalAndApplied)
                    characteristicsResultFooter(label: model.theoreticalAndAppliedFooter())
                }
                .padding()
                .maxWidth()
                .background(Color.white)
                .clipShape(.rect(cornerRadius: 12, style: .continuous))
            }
                .listRowInsets(.zero)
        }, header: {
            HStack {
                Image(systemName: "person.fill")
                    .setColor(Theme.Colors.primary.gradient)
                Text(Theme.Locale.PathFinder.Result.characteristicsTitle)
            }
            .setFont(.title3, .semibold, .rounded)
            .setColor(.black)
            .textCase(.none)
            .padding(.bottom, 8)
        })
        .listRowBackground(Color.clear)
    }
    
    @ViewBuilder
    func recommendedMajors() -> some View {
        Section(content: {
            Text("Explore majors that align perfectly with your unique strengths and interests. These recommendations are tailored to your individual profile, offering you a pathway to academic success and a fulfilling career.")
                .setFont(.subheadline, .regular, .rounded)
                .setColor(.gray)
        }, header: {
            HStack {
                Theme.Icons.textBook
                    .setColor(Theme.Colors.primary.gradient)
                Text(Theme.Locale.PathFinder.Result.recommendedMajorsTitle)
            }
            .setFont(.title3, .semibold, .rounded)
            .setColor(.black)
            .textCase(.none)
            .padding(.bottom, 8)
            .padding(.top)
        })
        if model.groupedRecommenededMajors.isEmpty {
            HStack {
                Image(systemName: "exclamationmark.triangle.fill")
                    .setColor(Theme.Colors.primary.gradient)
                Text("Kahjuks ei oska me teile ühtegi eriala soovitada")
                    .setFont(.subheadline, .regular, .rounded)
            }
        } else {
            ForEach(model.colleges, id: \.id) { college in
                if let favoritesForCollege = model.groupedRecommenededMajors[college.id] {
                    Section(header: schoolHeader(college.name)) {
                        VStack(spacing: 4) {
                            ForEach(favoritesForCollege, id: \.major.id) { recommendedMajor in
                                MajorsView.MajorCell(
                                    major: recommendedMajor.major,
                                    isFavorite: false,
                                    baseColor: college.palette.base,
                                    showDetailed: true,
                                    routeToMajor: {
                                        appState.route(to: .majorRemote(college: college, major: recommendedMajor.major, isFavorite: false))
                                    },
                                    removeFavorite: {},
                                    addFavorite: {},
                                    unFavoriteButtonRole: .cancel,
                                    allowSwipeActions: false,
                                    matchingPercentage: Int(recommendedMajor.matchPercentage)  // Assuming matchPercentage is a Double
                                )
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                                .maxWidth()
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                            }
                        }
                    }
                }
            }
            .listRowInsets(.zero)
            .listRowBackground(Color.clear)
        }
    }
    
    @ViewBuilder
    func careerInsights() -> some View {
        Section(content: {
            Text("Discover careers that align with your unique profile. We've analyzed your strengths and interests to suggest potential career paths where you can thrive. Explore industries where your skills are in high demand and learn about the educational paths to get you there.")
                .setFont(.subheadline, .regular, .rounded)
            Text("TBD -  To be determined / To be dropped")
        }, header: {
            HStack {
                Image(systemName: "chart.pie.fill")
                    .setColor(Theme.Colors.primary.gradient)
                Text(Theme.Locale.PathFinder.Result.careerInsightsTitle)
            }
            .setFont(.title3, .semibold, .rounded)
            .setColor(.black)
            .textCase(.none)
            .padding(.bottom, 8)
            .padding(.top)
        })
    }
    
    @ViewBuilder
    func viewHistoryButton() -> some View {
        Button(action: {
            appState.route(
                to: .pathFinderHistory(colleges: model.colleges),
                in: .profile
            )
        }, label: {
            Text(Theme.Locale.PathFinder.Result.viewHistory)
                .setFont(.title3, .regular, .rounded)
                .setColor(Theme.Colors.primary)
                .maxWidth()
        })
        .listRowBackground(Color.clear)
    }
    
    @ViewBuilder
    func characteristicsResultHeader(
        minLabel: LocalizedStringKey,
        maxLabel: LocalizedStringKey,
        value: Int
    ) -> some View {
        HStack {
            Text(minLabel)
            Spacer()
            Text(maxLabel)
        }
        .setFont(.body, .regular, .rounded)
        .overlay {
            Text("\(value)")
                .setFont(.body, .semibold, .rounded)
        }
    }
    
    @ViewBuilder
    func characteristicsResultFooter(label: String) -> some View {
        Text(label)
            .maxWidth(alignment: .leading)
            .setColor(.gray)
            .setFont(.footnote, .regular, .rounded)
    }
    
    @ViewBuilder
    func progressView(value: Int) -> some View {
        GeometryReader { geometry in
            let progress = min(max(0, value), 100) // Clamping the value between 0 and 100
            let width = (geometry.size.width * CGFloat(progress)) / 100

            ZStack(alignment: .leading) {
                Capsule(style: .continuous)
                    .fill(Theme.Colors.primary.gradient.opacity(0.175))
                    .frame(height: 20)
                    .maxWidth()
                
                Capsule(style: .continuous)
                    .fill(Theme.Colors.primary.gradient)
                    .frame(width: width, height: 20)
            }
        }
        .frame(height: 20)
    }
    
    @ViewBuilder
    func schoolHeader(_ name: String) -> some View {
        if let college = model.colleges.first(where: { $0.name == name}) {
            HStack(spacing: 3){
                Image(college.logoRef)
                    .resizable()
                    .fit()
                    .frame(height: 24, alignment: .leading)
                    .setColor(college.palette.base)
                Text(college.name.capitalized)
                    .setFont(.body, .medium, .rounded)
                    .textCase(.none)
                    .setColor(Theme.Colors.black)
            }
            .padding(.top)
            .listRowInsets(.eight)
        } else {
            Text(name)
                .setFont(.callout, .medium, .rounded)
                .setColor(Theme.Colors.black)
                .listRowInsets(.eight)
        }
    }
}
