import SwiftUI

struct MajorsView: View {
    @StateObject var model: Model
    
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 0) {
                searchView()
                levelsView()
                dividerView()
            }
            .background(Color.white)
            majorsList()
        }
        .toolbar {
            AppToolbarItem(.dismiss, color: model.college.palette.base)
            AppToolbarItem(.search(toggle: $model.isSearching), color: model.college.palette.base)
            ToolbarItem(placement: .principal, content: smallIconView)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear(perform: model.getFavorites)
        .onDisappear(perform: model.viewDidDisappear)
    }
    
    @ViewBuilder
    func majorCell(_ major: majorsMinors) -> some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(major.name)
                .setFont(.callout, .medium, .rounded)
                .setColor(.black)
            Text(major.level.rawValue.capitalized)
                .setFont(.subheadline, .medium, .rounded)
                .setColor(model.college.palette.base)
        }
        .padding(.vertical, 8)
        .badge(model.favorites.contains(major) ? Text(Image(systemName: "heart.fill"))
        .foregroundColor(model.college.palette.base) : nil)
    }
    
    @ViewBuilder
    private func levelCell(_ level: Model.SelectedLevel) -> some View {
        VStack(spacing: 5) {
            Text(level.title)
                .setFont(.body, .medium, .rounded)
                .padding(.horizontal, 12)
                .padding(.top, 8)
                .setColor(model.selectedLevel == level.level.rawValue ? model.college.palette.base : .black)
            Rectangle()
                .frame(width: 65, height: 3)
                .setColor(model.college.palette.base.gradient)
                .cornerRadiusCustom(50, corners: [.topLeft, .topRight])
                .opacity(model.selectedLevel == level.level.rawValue ? 1 : 0)
        }
        .padding(.top, 5)
        .contentShape(Rectangle())
        .onTapGesture {
            model.didSelectLevel(level: level)
        }
        
    }
}

extension MajorsView {
    @ViewBuilder
    func searchView() -> some View {
        if model.isSearching {
            SearchNavBar(text: $model.searchText)
        }
    }
    
    @ViewBuilder
    func levelsView() -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(model.levels()) { item in
                    levelCell(item)
                }
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
    }
    
    @ViewBuilder
    func dividerView() -> some View {
        Divider().background(Color.mediumGray)
    }
    
    @ViewBuilder
    func smallIconView() -> some View {
        CollegeView.LogoView(
            school: model.college,
            image: model.college.logoRef)
    }
    
    @ViewBuilder
    func majorsList() -> some View {
        List(model.selectedMajors()) { item in
            NavigationLink(
                destination: CollegeMajorView(
                    model: .init(
                        major: item,
                        college: model.college,
                        tabSelection: .overview
                    )
                )
            ) {
                majorCell(item)
            }
        }
    }
}

struct CollegeFavorite: Codable, Hashable {
    var college: College
    var majors: [majorsMinors]
}
