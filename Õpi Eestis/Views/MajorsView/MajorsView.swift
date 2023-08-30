import SwiftUI

struct MajorsView: View {
    @EnvironmentObject var pathManager: PathManager
    @Environment(\.presentationMode) var dismiss
    @StateObject var model: Model
    
    var body: some View {
        List {
            Section(content: majorsContent, header: hiddenHeader)
        }
        .searchable(
            text: $model.searchText,
            placement: .navigationBarDrawer(displayMode: .automatic),
            prompt: Text("Otsi eriala")
        )
        .onAppear {
            UISearchBar.appearance().tintColor = UIColor(model.college.palette.base)
        }
        .onAppear(perform: model.getFavorites)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading, content: backButton)
            ToolbarItem(placement: .principal, content: smallIconView)
            ToolbarItem(placement: .navigationBarTrailing, content: levelsButton)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .navigationDestination(for: majorsMinors.self) { major in
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

private extension MajorsView {
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
}

// MARK: - Content

private extension MajorsView {
    @ViewBuilder
    func majorsContent() -> some View {
        ForEach(model.displayedMajors, id: \.self) { major in
            majorCell(major)
        }
    }
}

// MARK: - Buttons

private extension MajorsView {
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

// MARK: - Cells

extension MajorsView {
    @ViewBuilder
    func majorCell(_ major: majorsMinors) -> some View {
        HStack(alignment: .center) {
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
                            Text("\(major.language.secondaryLabel)")
                            Text("•")
                            Text("\(major.duration.formattedDecimals(1)) \(major.duration == 1.0 ? "aasta" : "aastat")")
                            Text("•")
                            Text(major.cost.amount == 0 ? "Tasuta" : "€€€")
                        }
                        .setColor(.gray)
                        .setFont(.footnote, .medium, .rounded)
                    }
                }
            }
            .padding(.vertical, 4)
            Spacer()
            if model.favorites.contains(major) {
                Image(systemName: "heart.fill")
                    .setColor(model.college.palette.base.gradient)
//                    .padding(.vertical, 6)
            }
        }
        .swipeActions {
            if model.favorites.contains(major) {
                Button {
                    model.removeFavorite(major: major)
                } label: {
                    Image(systemName: "heart.slash")
                }
                .tint(.red)
            } else {
                Button {
                    model.addFavorite(major: major)
                } label: {
                    Image(systemName: "heart.fill")
                }
                .tint(model.college.palette.base)
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            pathManager.path.append(major)
        }
    }
}

struct CollegeFavorite: Codable, Hashable {
    var college: College
    var majors: [majorsMinors]
}
