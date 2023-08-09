import SwiftUI

struct CollegesListView: View {
    let schools: [College]
    private let insets: EdgeInsets = .init(top: 8, leading: 8, bottom: 8, trailing: 12)

    var body: some View {
        NavigationStack {
            List(schools) { college in
                NavigationLink(
                    value: college,
                    label: { CollegeCell(school: college) }
                )
                .listRowInsets(insets)
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: College.self, destination: { college in
                CollegeView(model: .init(college: college))
            })
            
        }
        .toolbar(.visible, for: .tabBar)
    }
}

extension CollegesListView {
    struct CollegeCell: View {
        let school: College
        
        var body: some View {
            HStack(alignment: .center, spacing: 10){
                Image(school.logoRef)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                VStack(alignment: .leading, spacing: 5){
                    Text(school.name)
                        .setFont(.callout, .medium, .rounded)
                        .frame(alignment: .leading)
                        .multilineTextAlignment(.leading)
                    Text(school.location.city)
                        .setFont(.caption, .medium, .rounded)
                        .foregroundColor(.darkGray)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}
