import SwiftUI

struct MajorsView: View {
    @EnvironmentObject var pathManager: PathManager
    @Environment(\.presentationMode) var dismiss
    @StateObject var model: Model
    
    var body: some View {
        List {
            Section(content: majorsContent, header: hiddenHeader)
        }
        .searchable(text: $model.searchText)
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
        HStack(spacing: 4) {
            Text("Õppeaste")
            Image.chevronDown
                .fit()
                .setFont(.footnote, .semibold, .rounded)
        }
//        .padding(.vertical, 6)
//        .background(
//            Capsule(style: .continuous)
//                .fill(model.college.palette.base.opacity(0.15).gradient)
//        )
        .setFont(.body, .medium, .rounded)
        .setColor(model.college.palette.base)
        .padding(.trailing, 8)
    }
    
    @ViewBuilder
    func levelsContent() -> some View {
        Picker("", selection: $model.selectedLevel) {
            ForEach(model.levels, id: \.self) { item in
                Text(item.label)
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
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text(major.name)
                    .setFont(.callout, .medium, .rounded)
                    .setColor(.black)
                Text("\(major.level.rawValue.capitalized) \(major.language.symbol)")
                    .setFont(.subheadline, .medium, .rounded)
                    .setColor(model.college.palette.base)
                
            }
            .padding(.vertical, 4)
            Spacer()
            if model.favorites.contains(major) {
                Image(systemName: "heart.fill")
                    .setColor(model.college.palette.base.gradient)
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
