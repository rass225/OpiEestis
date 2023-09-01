import SwiftUI

struct CollegesListView: View {
    @EnvironmentObject var pathManager: PathManager
    let schools: [College]
    
    var body: some View {
        List {
            Section {
                ForEach(schools) { college in
                    collegeCell(college)
                }
            }
        }
        .toolbar(.visible, for: .tabBar)
        .toolbarBackground(.white, for: .tabBar)
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
            VStack(alignment: .leading, spacing: 5){
                collegeName(college.name)
                collegeLocation(college.location.city)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .contentShape(Rectangle())
        .listRowInsets(.collegeListInsets)
        .onTapGesture {
            pathManager.path.append(college)
        }
    }
    
    @ViewBuilder
    func collegeImage(_ reference: String) -> some View {
        Image(reference)
            .resizable()
            .fit()
            .frame(width: 60, height: 60)
    }
    
    @ViewBuilder
    func collegeName(_ name: String) -> some View {
        Text(name)
            .setFont(.callout, .medium, .rounded)
            .frame(alignment: .leading)
            .multilineTextAlignment(.leading)
    }
    
    @ViewBuilder
    func collegeLocation(_ city: String) -> some View {
        Text(city)
            .setFont(.subheadline, .medium, .rounded)
            .setColor(.gray)
    }
}
