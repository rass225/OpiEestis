import SwiftUI

struct MajorsView: View {
    @EnvironmentObject var pathManager: PathManager
    @Environment(\.presentationMode) var dismiss
    @StateObject var model: Model
    
    var body: some View {
        List {
            Section(content: majorsContent, header: hiddenHeader)
                .id(UUID())
        }
        .searchable(
            text: $model.searchText,
            placement: .navigationBarDrawer(displayMode: .automatic),
            prompt: Text("Otsi eriala")
        )
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading, content: backButton)
            ToolbarItem(placement: .principal, content: smallIconView)
            ToolbarItem(placement: .navigationBarTrailing, content: levelsButton)
        }
        .onAppear(perform: model.setSearchBarColor)
        .onAppear(perform: model.getFavorites)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .navigationDestination(for: Major.self) { major in
            CollegeMajorView(
                model: .init(
                    major: major,
                    college: model.college,
                    tabSelection: .overview
                )
            )
            .environmentObject(pathManager)
        }
    }
}

// MARK: - Content

private extension MajorsView {
    @ViewBuilder
    func majorsContent() -> some View {
        ForEach(model.displayedMajors, id: \.self) { major in
            majorCell(major)
        }
    }
    
    @ViewBuilder
    func levelsContent() -> some View {
        Section {
            Picker("", selection: $model.selectedLevel) {
                ForEach(model.levels, id: \.self) { item in
                    Text(item.label)
                }
            }
        }
        Section {
            Picker("", selection: $model.detailLevel) {
                ForEach(Model.DetailLevel.allCases, id: \.self) { level in
                    Label(level.label, systemImage: level.icon)
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
    func levelsButtonLabel() -> some View {
        Image(systemName: "slider.horizontal.3")
            .setFont(.body, .bold, .rounded)
            .setColor(model.college.palette.base.gradient)
            .padding(.trailing, 4)
    }
    
    @ViewBuilder
    func heartImage() -> some View {
        Image(systemName: "heart.fill")
            .setColor(model.college.palette.base.gradient)
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
            pathManager.path.append(major)
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
        Button(action: { dismiss.wrappedValue.dismiss() }) {
            Image.chevronLight
                .setFont(.callout, .bold, .rounded)
                .setColor(model.college.palette.base.gradient)
                .padding(.leading, 8)
        }
    }
    
    @ViewBuilder
    func homeButton() -> some View {
        Button(action: { pathManager.path = NavigationPath() }) {
            Image(systemName: "chevron.backward.2")
                .setFont(.callout, .bold, .rounded)
                .setColor(model.college.palette.base.gradient)
        }
    }
    
    @ViewBuilder
    func levelsButton() -> some View {
        Menu(content: levelsContent, label: levelsButtonLabel)
    }
}
