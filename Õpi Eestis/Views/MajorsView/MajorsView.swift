import SwiftUI

struct MajorsView: View {
    @EnvironmentObject var appState: AppState
    @Environment(\.dismiss) var dismiss
    @StateObject var model: Model
    
    var body: some View {
        List {
            Section(content: majorsContent, header: hiddenHeader)
        }
        .searchable(text: $model.debouncedSearchText, placement: .navigationBarDrawer, prompt: Text("Otsi eriala"))
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading, content: backButton)
            ToolbarItem(placement: .principal, content: smallIconView)
            ToolbarItem(placement: .navigationBarTrailing, content: filterButton)
        }
        .sheet(isPresented: $model.isFilterPresented, content: filterView)
        .onAppear(perform: model.setTheme)
        .onAppear(perform: model.getFavorites)
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
        Image(systemName: "heart.fill")
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
                .overlay {
                    Text("Filtrid")
                        .setFont(.body, .medium, .rounded)
                }
                List {
                    levelPicker()
                    languagePicker()
                    locationPicker()
                    durationPicker()
                    costPicker()
                }
                .scrollIndicators(.hidden)
            }
            .setFont(.subheadline, .medium, .rounded)
            .navigationBarTitleDisplayMode(.inline)
        }
        .presentationDetents([.medium])
        .presentationCornerRadius(16)
    }
}

// MARK: - Cells

extension MajorsView {
    @ViewBuilder
    func majorCell(_ major: Major) -> some View {
        HStack(alignment: .center, spacing: 8) {
            VStack(alignment: .leading, spacing: 2) {
                Text(major.name)
                    .setFont(.callout, .medium, .rounded)
                    .setColor(.black)
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
            if model.favorites.contains(major) {
                heartImage()
            }
        }
        .swipeActions {
            if model.favorites.contains(major) {
                removeFavoriteButton(major)
            } else {
               addFavoriteButton(major)
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            appState.route(to: CollegeDestination.major(
                college: model.college,
                major: major,
                isFavorite: model.favorites.contains(major)
            ))
        }
    }
}

//MARK: - Buttons

private extension MajorsView {
    @ViewBuilder
    func removeFavoriteButton(_ major: Major) -> some View {
        Button {
            model.removeFavorite(major: major)
        } label: {
            Image(systemName: "heart.slash")
        }
        .tint(.red)
    }
    
    @ViewBuilder
    func addFavoriteButton(_ major: Major) -> some View {
        Button {
            model.addFavorite(major: major)
        } label: {
            Image(systemName: "heart.fill")
        }
        .tint(model.college.palette.base)
    }
    
    @ViewBuilder
    func backButton() -> some View {
        Button(action: dismiss.callAsFunction) {
            Image.chevronLight
                .setFont(.callout, .bold, .rounded)
                .setColor(model.college.palette.base.gradient)
                .padding(.leading, 8)
        }
    }
    
    @ViewBuilder
    func filterButton() -> some View {
        Image(systemName: "slider.horizontal.3")
            .setFont(.body, .bold, .rounded)
            .setColor(model.college.palette.base.gradient)
            .padding(.trailing, 4)
            .overlay(alignment: .topTrailing) {
                if model.filtersAmount > 0 {
                    Text(String(model.filtersAmount))
                        .setFont(.footnote, .semibold, .rounded)
                        .setColor(.white)
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
                Image(systemName: "xmark")
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
        Picker("Õppeaste", selection: $model.selectedLevel) {
            ForEach(model.levels, id: \.self) {
                Text($0.label)
            }
        }
        .padding(.vertical, 2)
    }
    
    @ViewBuilder
    func languagePicker() -> some View {
        Picker("Õppekeel", selection: $model.selectedLanguage) {
            ForEach(model.languages, id: \.self) {
                Text($0.label)
            }
        }
        .padding(.vertical, 2)
    }
    
    @ViewBuilder
    func locationPicker() -> some View {
        Picker("Linn", selection: $model.selectedLocation) {
            Text("Kõik")
                .tag(Model.LocationSelection.all)
            ForEach(model.locations, id: \.self) {
                Text($0.rawValue)
                    .tag(Model.LocationSelection.specific($0))
               
            }
        }
        .padding(.vertical, 2)
    }
    
    @ViewBuilder
    func durationPicker() -> some View {
        Picker("Kestus", selection: $model.selectedDuration) {
            Text("Kõik")
                .tag(Model.DurationSelection.all)
            ForEach(model.durations, id: \.self) {
                if $0.isInt() {
                    Text("\(Int($0)) aastat")
                        .tag(Model.DurationSelection.specific($0))
                } else {
                    Text(String(format: "%.1f", $0) + " aastat")
                        .tag(Model.DurationSelection.specific($0))
                }
            }
        }
        .padding(.vertical, 2)
    }
    
    @ViewBuilder
    func costPicker() -> some View {
        HStack(spacing: 24) {
            Text("Maksumus")
            Picker("Maksumus", selection: $model.selectedCost) {
                ForEach(Model.CostSelection.allCases, id: \.self) {
                    Text($0.label)
                }
            }
            .pickerStyle(.segmented)
            .padding(.vertical, 4)
        }
    }
}
