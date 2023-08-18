import SwiftUI

struct CollegesListView: View {
    @EnvironmentObject var pathManager: PathManager
    let schools: [College]
    
    var body: some View {
        List(schools) { college in
            collegeCell(college)
        }
        .toolbar(.visible, for: .tabBar)
        .navigationBarTitleDisplayMode(.inline)
        .navigationDestination(for: College.self) { college in
            CollegeView(model: .init(college: college))
                .environmentObject(pathManager)
        }
    }
}

private extension CollegesListView {
    @ViewBuilder
    func collegeCell(_ college: College) -> some View {
        HStack(alignment: .center, spacing: 10){
            collegeImage(college.logoRef)
            collegeTitle(
                name: college.name,
                city: college.location.city
            )
        }
        .contentShape(Rectangle())
        .listRowInsets(.collegeListInsets)
        .onTapGesture {
            pathManager.path.append(college)
        }
    }
    
    @ViewBuilder
    func collegeImage(_ ref: String) -> some View {
        Image(ref)
            .resizable()
            .scaledToFit()
            .frame(width: 60, height: 60)
    }
    
    @ViewBuilder
    func collegeTitle(
        name: String,
        city: String
    ) -> some View {
        VStack(alignment: .leading, spacing: 5){
            Text(name)
                .setFont(.callout, .medium, .rounded)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
            Text(city)
                .setFont(.caption, .medium, .rounded)
                .setColor(.darkGray)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
