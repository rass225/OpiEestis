import SwiftUI

struct MajorsView: View {
    @Environment(\.presentationMode) var dismiss
    @StateObject var model: Model
    
    var body: some View {
        List {
            Section(content: {
                ForEach(model.displayedMajors, id: \.self) { major in
                    majorCell(major)
                }
            }, header: hiddenHeader)
        }
        .searchable(text: $model.searchText)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading, content: backButton)
            ToolbarItem(placement: .principal, content: smallIconView)
            ToolbarItem(placement: .navigationBarTrailing, content: levelsView)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .onAppear(perform: model.getFavorites)
    }
}

extension MajorsView {
    @ViewBuilder
    func levelsView() -> some View {
        Menu(content: {
            Picker("", selection: $model.selectedLevel) {
                ForEach(model.levels, id: \.self) { item in
                    Text(item.label)
                }
            }
        }, label: {
            HStack {
                Text("Õppeaste")
                Image.chevronDown
                    .fit()
                    .setFont(.caption, .medium, .rounded)
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
            .background(Capsule(style: .continuous).fill(model.college.palette.base.opacity(0.15).gradient))
            .setFont(.subheadline, .medium, .rounded)
            .setColor(model.college.palette.base)
        })
    }

    @ViewBuilder
    func smallIconView() -> some View {
        CollegeView.LogoView(
            school: model.college,
            image: model.college.logoRef)
    }
    
    @ViewBuilder
    func hiddenHeader() -> some View {
        Text("Test")
            .opacity(0)
    }
}

// MARK: - Buttons

extension MajorsView {
    @ViewBuilder
    func backButton() -> some View {
        Button(action: { dismiss.wrappedValue.dismiss() }) {
            Image.chevronLight
                .frame(height: 35)
                .frame(width: 35)
                .setFont(.callout, .bold, .rounded)
                .foregroundStyle(model.college.palette.base.gradient)
        }
    }
}

// MARK: - Cells

extension MajorsView {
    @ViewBuilder
    func majorCell(_ major: majorsMinors) -> some View {
        NavigationLink(destination: {
                CollegeMajorView(
                    model: .init(
                        major: major,
                        college: model.college,
                        tabSelection: .overview
                    )
                )
            }, label: {
                HStack {
                    VStack(alignment: .leading, spacing: 2) {
                        Text(major.name)
                            .setFont(.callout, .medium, .rounded)
                            .setColor(.black)
                        Text(major.level.rawValue.capitalized)
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
            }
        )
    }
}

struct CollegeFavorite: Codable, Hashable {
    var college: College
    var majors: [majorsMinors]
}
