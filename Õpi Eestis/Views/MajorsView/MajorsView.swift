import SwiftUI

struct MajorsView: View {
    @EnvironmentObject var appState: AppState
    @StateObject var model: Model
    
    var body: some View {
        List {
            Section(content: {
                ForEach(model.displayedMajors, id: \.id) {
                    majorCell($0)
                }
            }, header: hiddenHeader)
        }
        .searchable(
            text: $model.debouncedSearchText,
            placement: .navigationBarDrawer(displayMode: .always),
            prompt: Text(Theme.Locale.Majors.searchPlaceholder)
        )
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading, content: backButton)
            ToolbarItem(placement: .principal, content: smallIconView)
            ToolbarItem(placement: .navigationBarTrailing, content: filterButton)
        }
        .sheet(isPresented: $model.isFilterPresented, content: filterView)
        .onAppear(perform: model.setTheme)
        .navigationBarBackButtonHidden()
    }
}

// MARK: - Content

private extension MajorsView {
    @ViewBuilder
    func levelsContent() -> some View {
        Section {
            Picker("", selection: $model.selectedLevel) {
                ForEach(model.levels, id: \.self) {
                    Text($0.label)
                }
            }
        }
        Section {
            Picker("", selection: $model.detailLevel) {
                ForEach(Model.DetailLevel.allCases, id: \.self) {
                    Label($0.label, systemImage: $0.icon)
                }
            }
        }
    }
    
    @ViewBuilder
    func smallIconView() -> some View {
        CollegeView.LogoView(
            school: model.college,
            image: model.college.logoRef
        )
    }
    
    @ViewBuilder
    func hiddenHeader() -> some View {
        Text("")
            .opacity(0)
    }
    
    @ViewBuilder
    func filterView() -> some View {
        NavigationStack {
            VStack(spacing: 0) {
                HStack {
                    Spacer()
                    Image(systemName: model.detailLevel.reverseIcon)
                        .setColor(model.college.palette.base.gradient)
                        .setFont(.title3, .semibold, .rounded)
                        .padding(.vertical, 12)
                        .padding(.trailing, 16)
                        .onTapGesture(perform: model.flipDetailLevel)
                }
                .overlay(content: filterViewTitle)
                List {
                    durationPicker()
                    locationPicker()
                    levelPicker()
                    languagePicker()
                    studyTypePicker()
                    costPicker()
                }
                .listStyle(.plain)
                .scrollIndicators(.hidden)
                .padding(.bottom)
                
                if model.filtersAmount > 0 {
                    resetButton()
                }
            }
            .setFont(.subheadline, .medium, .rounded)
            .navigationBarTitleDisplayMode(.inline)
        }
        .presentationDetents([.fraction(0.55)])
        .presentationCornerRadius(16)
    }
    
    @ViewBuilder
    func filterViewTitle() -> some View {
        Text(Theme.Locale.Majors.filters)
            .setFont(.body, .medium, .rounded)
    }
}

// MARK: - Cells

extension MajorsView {
    @ViewBuilder
    func majorCell(_ major: NewMajor) -> some View {
        MajorCell(
            major: major,
            isFavorite: model.isFavorite(major),
            baseColor: model.college.palette.base,
            showDetailed: model.detailLevel == .detailed,
            routeToMajor: {
                appState.route(to: .majorRemote(college: model.college, major: major, isFavorite: model.isFavorite(major)))
            },
            removeFavorite: {
                model.removeFavorite(major: major)
            },
            addFavorite: {
                model.addFavorite(major: major)
            },
            unFavoriteButtonRole: .cancel,
            allowSwipeActions: true, 
            matchingPercentage: nil
        )
    }
    
    struct MajorCell: View {
        @ObservedObject var locale = DependencyManager.shared.localeManager
        let major: NewMajor
        let isFavorite: Bool
        let baseColor: Color
        let showDetailed: Bool
        let routeToMajor: () -> ()
        let removeFavorite: () -> ()
        let addFavorite: () -> ()
        let unFavoriteButtonRole: ButtonRole
        let allowSwipeActions: Bool
        let matchingPercentage: Int?
        
        var body: some View {
            HStack(alignment: .center, spacing: 8) {
                VStack(alignment: .leading, spacing: 2) {
                    Text(locale.currentLocale == .estonian ? major.name : major.nameEn ?? major.name)
                        .setFont(.callout, .medium, .rounded)
                        .setColor(Theme.Colors.black)
                    Text(major.level.label)
                        .setFont(.footnote, .medium, .rounded)
                        .setColor(baseColor)
                        .padding(.bottom, 22)
                    if showDetailed {
                        HStack(spacing: 20) {
                            HStack(spacing: 4) {
                                Theme.Icons.translate
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 16, height: 16)
                                    .setColor(baseColor.gradient)
//                                if let languages = major.languages {
                                    HStack(spacing: 2) {
                                        ForEach(major.languages, id: \.self) { language in
                                            Text(language.symbol)
                                        }
                                    }
//                                }
                            }
                            HStack(spacing: 4) {
                                Theme.Icons.clock
                                    .setColor(baseColor.gradient)
                                Text(major.durationLabel)
                            }
                            HStack(spacing: 4) {
                                major.cost.currency.icon
                                    .setColor(baseColor.gradient)
                                Text(major.costLabel)
                            }
                        }
                        .setColor(.black)
                        .setFont(.footnote, .regular, .rounded)
                    }
                }
                .padding(.vertical, 4)
                Spacer()
                if isFavorite {
                    heartImage()
                } else if let matchingPercentage {
                    HStack(spacing: 1) {
                        Text("\(matchingPercentage)%")
                            .setColor(.black)
                        Image(systemName: "scope")
                            .setColor(Theme.Colors.primary.gradient)
                            .setFont(.body, .bold, .rounded)
                    }
                    .setFont(.subheadline, .medium, .rounded)
                    
                }
            }
            .swipeActions {
                if allowSwipeActions {
                    if isFavorite {
                        removeFavoriteButton(major)
                    } else {
                       addFavoriteButton(major)
                    }
                }
            }
            .contentShape(Rectangle())
            .onTapGesture {
                routeToMajor()
            }
        }
        
        @ViewBuilder
        func heartImage() -> some View {
            Theme.Icons.heart
                .setSymbol(.fill)
                .setColor(baseColor.gradient)
        }
        
        @ViewBuilder
        func removeFavoriteButton(_ major: NewMajor) -> some View {
            Button(role: unFavoriteButtonRole, action: removeFavorite, label: {
                Image(systemName: "heart.slash")
            })
            .tint(.red)
        }
        
        @ViewBuilder
        func addFavoriteButton(_ major: NewMajor) -> some View {
            Button {
                addFavorite()
            } label: {
                Theme.Icons.heart
                    .setSymbol(.fill)
            }
            .tint(baseColor)
        }
        
        struct BadgeModifier: ViewModifier {
            let matchingPercentage: Int?
            func body(content: Content) -> some View {
                if let matchingPercentage {
                    content
                        .badge(
                            Text("\(matchingPercentage)% ")
                                .setFont(.subheadline, .medium, .rounded)
                                .setBadgeColor(.black) + Text(Theme.Locale.PathFinder.Result.match)
                                .setFont(.subheadline, .medium, .rounded)
                                .setBadgeColor(.black)
                        )
                } else {
                    content
                }
            }
        }
    }
}

//MARK: - Buttons

private extension MajorsView {
    
    @ViewBuilder
    func backButton() -> some View {
        BackButton(color: model.college.palette.base)
    }
    
    @ViewBuilder
    func filterButton() -> some View {
        Theme.Icons.slider
            .setFont(.body, .bold, .rounded)
            .setColor(model.college.palette.base.gradient)
            .padding(.trailing, 4)
            .padding(.leading)
            .padding(.vertical, 8)
            .overlay(alignment: .topTrailing) {
                if model.filtersAmount > 0 {
                    Text(String(model.filtersAmount))
                        .setFont(.footnote, .semibold, .rounded)
                        .setColor(Theme.Colors.white)
                        .padding(5)
                        .background(Circle().fill(Color.red.gradient))
                        .offset(x: 0, y: -4)
                }
            }
            .contentShape(.rect)
            .onTapGesture {
                model.isFilterPresented.toggle()
            }
    }
    
    @ViewBuilder
    func resetButton() -> some View {
        Button(action: model.resetFilters) {
            if model.filtersAmount > 0 {
                Theme.Icons.xmark
                    .setSymbol(.circle.fill, .palette)
                    .setColor(.white, model.college.palette.base.gradient)
                    .setFont(.largeTitle, .medium, .rounded)
                    .padding()
            }
        }
    }
}

// MARK: - Pickers

private extension MajorsView {
    @ViewBuilder
    func levelPicker() -> some View {
        Picker(selection: $model.selectedLevel, content: {
            ForEach(model.levels, id: \.self) {
                Text($0.label)
            }
        }, label: {
            HStack(spacing: 0) {
                Theme.Icons.graduationCircle
                    .setColor(model.college.palette.base.gradient)
                    .setFont(.body, .regular, .rounded)
                    .frame(width: 32, alignment: .leading)
                Text(Theme.Locale.Majors.studyLevel)
                    .setColor(Theme.Colors.black)
            }
        })
        .tint(model.college.palette.base.gradient)
    }
    
    @ViewBuilder
    func languagePicker() -> some View {
        Picker(selection: $model.selectedLanguage, content: {
            ForEach(model.languages, id: \.self) {
                Text($0.label)
            }
        }, label: {
            HStack(spacing: 0) {
                Theme.Icons.globe
                    .setColor(model.college.palette.base.gradient)
                    .setFont(.body, .regular, .rounded)
                    .frame(width: 32, alignment: .leading)
                Text(Theme.Locale.Majors.language)
                    .setColor(Theme.Colors.black)
            }
        })
        .tint(model.college.palette.base.gradient)
    }
    
    @ViewBuilder
    func locationPicker() -> some View {
        Picker(selection: $model.selectedLocation, content: {
            Text(Theme.Locale.Majors.all)
                .tag(Model.LocationSelection.all)
            ForEach(model.locations, id: \.self) {
                Text($0.rawValue)
                    .tag(Model.LocationSelection.specific($0))
               
            }
        }, label: {
            HStack(spacing: 0) {
                Theme.Icons.mappinCircle
                    .setColor(model.college.palette.base.gradient)
                    .setFont(.body, .regular, .rounded)
                    .frame(width: 32, alignment: .leading)
                Text(Theme.Locale.Majors.city)
                    .setColor(Theme.Colors.black)
            }
        })
        .tint(model.college.palette.base.gradient)
    }
    
    @ViewBuilder
    func durationPicker() -> some View {
        Picker(selection: $model.selectedDuration, content: {
            Text(Theme.Locale.Majors.all)
                .tag(Model.DurationSelection.all)
            ForEach(model.durations, id: \.self) { duration in
                Text(Theme.Locale.Duration.getYears(amount: duration))
                    .tag(Model.DurationSelection.specific(duration))
            }
        }, label: {
            HStack(spacing: 0) {
                Theme.Icons.clock
                    .setColor(model.college.palette.base.gradient)
                    .setFont(.body, .regular, .rounded)
                    .frame(width: 32, alignment: .leading)
                Text(Theme.Locale.Majors.duration)
                    .setColor(Theme.Colors.black)
            }
        })
        .tint(model.college.palette.base.gradient)
    }
    
    @ViewBuilder
    func studyTypePicker() -> some View {
        Picker(selection: $model.selectedStudyType, content: {
            Text(Theme.Locale.Majors.all)
                .tag(Model.StudyTypeSelection.all)
            ForEach(model.studyTypes, id: \.self) {
                Text($0.label)
                    .tag(Model.StudyTypeSelection.specific($0))
            }
        }, label: {
            HStack(spacing: 0) {
                Theme.Icons.studyType
                    .setColor(model.college.palette.base.gradient)
                    .setFont(.body, .regular, .rounded)
                    .frame(width: 32, alignment: .leading)
                Text(Theme.Locale.Major.studyType)
                    .setColor(Theme.Colors.black)
            }
        })
        .tint(model.college.palette.base.gradient)
    }
    
    @ViewBuilder
    func costPicker() -> some View {
        HStack(spacing: 24) {
            HStack(spacing: 0) {
                Theme.Icons.euro
                    .setColor(model.college.palette.base.gradient)
                    .setFont(.body, .regular, .rounded)
                    .frame(width: 32, alignment: .leading)
                Text(Theme.Locale.Majors.cost)
            }
            Picker(Theme.Locale.Majors.cost, selection: $model.selectedCost) {
                ForEach(Model.CostSelection.allCases, id: \.self) {
                    Text($0.label)
                }
            }
            .tint(model.college.palette.base.gradient)
            .pickerStyle(.segmented)
            .padding(.vertical, 2)
        }
    }
}
