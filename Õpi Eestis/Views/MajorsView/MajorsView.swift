import SwiftUI

struct MajorsView: View {
    @EnvironmentObject var appState: AppState
    @StateObject var model: Model
    
    var body: some View {
        List {
            Section(content: majorsContent, header: hiddenHeader)
        }
        .searchable(
            text: $model.debouncedSearchText,
            placement: .navigationBarDrawer(displayMode: .always),
            prompt: Text(Theme.Locale.Majors.searchMajors)
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
    func majorsContent() -> some View {
        ForEach(model.displayedMajors, id: \.self) {
            majorCell($0)
        }
    }
    
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
        Text("Test")
            .opacity(0)
    }
    
    @ViewBuilder
    func heartImage() -> some View {
        Theme.Icons.heart
            .setSymbol(.fill)
            .setColor(model.college.palette.base.gradient)
    }
    
    @ViewBuilder
    func filterView() -> some View {
        NavigationStack {
            VStack(spacing: 0) {
                HStack {
                    if model.filtersAmount > 0 {
                        resetButton()
                            .padding(.leading, 16)
                    }
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
            }
            .setFont(.subheadline, .medium, .rounded)
            .navigationBarTitleDisplayMode(.inline)
        }
        .presentationDetents([.fraction(0.45)])
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
        HStack(alignment: .center, spacing: 8) {
            VStack(alignment: .leading, spacing: 2) {
                Text(major.name)
                    .setFont(.callout, .medium, .rounded)
                    .setColor(Theme.Colors.black)
                VStack(alignment: .leading, spacing: 24) {
                    Text(major.level.rawValue.capitalized)
                        .setFont(.subheadline, .medium, .rounded)
                        .setColor(model.college.palette.base)
                    if model.detailLevel == .detailed {
                        HStack(spacing: 8) {
                            Text(major.language.secondaryLabel)
                            Text("•")
                            Text(major.durationLabel)
                            Text("•")
                            Text(major.costLabel)
                        }
                        .setColor(.gray)
                        .setFont(.footnote, .medium, .rounded)
                    }
                }
            }
            .padding(.vertical, 4)
            Spacer()
            if model.isFavorite(major) {
                heartImage()
            }
        }
        .swipeActions {
            if model.isFavorite(major) {
                removeFavoriteButton(major)
            } else {
               addFavoriteButton(major)
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            appState.route(to: .majorRemote(
                college: model.college,
                major: major,
                isFavorite: model.isFavorite(major)
            ))
        }
    }
}

//MARK: - Buttons

private extension MajorsView {
    @ViewBuilder
    func removeFavoriteButton(_ major: NewMajor) -> some View {
        Button {
            model.removeFavorite(major: major)
        } label: {
            Image(systemName: "heart.slash")
        }
        .tint(.red)
    }
    
    @ViewBuilder
    func addFavoriteButton(_ major: NewMajor) -> some View {
        Button {
            model.addFavorite(major: major)
        } label: {
            Theme.Icons.heart
                .setSymbol(.fill)
        }
        .tint(model.college.palette.base)
    }
    
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
            .overlay(alignment: .topTrailing) {
                if model.filtersAmount > 0 {
                    Text(String(model.filtersAmount))
                        .setFont(.footnote, .semibold, .rounded)
                        .setColor(Theme.Colors.white)
                        .padding(5)
                        .background(Circle().fill(Color.red))
                        .offset(x: 0, y: -10)
                }
            }
            .onTapGesture {
                model.isFilterPresented.toggle()
            }
    }
    
    @ViewBuilder
    func resetButton() -> some View {
        Button(action: model.resetFilters, label: {
            if model.filtersAmount > 0 {
                Theme.Icons.xmark
                    .setColor(model.college.palette.base.gradient)
                    .setFont(.body, .bold, .rounded)
            }
        })
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
            ForEach(model.durations, id: \.self) {
                if $0.isInt() {
                    Text("\(Int($0)) \(Theme.Locale.Major.years)")
                        .tag(Model.DurationSelection.specific($0))
                } else {
                    Text(String(format: "%.1f", $0) + " \(Theme.Locale.Major.years)")
                        .tag(Model.DurationSelection.specific($0))
                }
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
                Text($0.capitalized)
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
