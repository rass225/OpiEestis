import SwiftUI

struct CollegesListView: View {
    @EnvironmentObject var appState: AppState
    @StateObject var model: Model
    
    var body: some View {
        List {
            VStack(spacing: 4) {
                ForEach(model.colleges) { college in
                    collegeCell(college)
                }
            }
            .listRowInsets(.zero)
            .listRowBackground(Color.clear)
        }
        .toolbar {
            ToolbarItem(placement: .principal, content: AppPrincipal.init)
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

private extension CollegesListView {
    @ViewBuilder
    func collegeCell(_ college: College) -> some View {
        HStack(alignment: .center, spacing: 10){
            collegeImage(college.logoRef)
            VStack(alignment: .leading, spacing: 5){
                collegeName(model.currentLocale == .estonian ? college.name : college.nameEn)
                collegeLocation(college.location.city)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.vertical, 6)
        .contentShape(Rectangle())
        .padding()
        .maxWidth()
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 12, style: .continuous))
        
        .onTapGesture {
            switch appState.environment {
            case .edit:
                appState.route(to: .collegeDevelopment(college))
            case .local:
                appState.route(to: CollegeDestination.college(college))
            case .remote:
                appState.route(to: .college(college))
            }
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
