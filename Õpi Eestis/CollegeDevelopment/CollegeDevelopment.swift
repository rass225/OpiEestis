import SwiftUI


struct CollegeDevelopment: View {
    @StateObject var model: Model
    let local: String = "Local"
    let remote: String = "Remote"
    
    var body: some View {
        VStack {
            HStack {
                Text(local)
                    .setColor(.white)
                    .padding(.vertical, 12)
                    .maxWidth()
                    .background(Color.blue)
                    .clipShape(.rect(cornerRadius: 8, style: .continuous))
                    .onTapGesture {
                        model.listSelection = .local
                    }
                Text(remote)
                    .setColor(.white)
                    .padding(.vertical, 12)
                    .maxWidth()
                    .background(Color.green)
                    .clipShape(.rect(cornerRadius: 8, style: .continuous))
                    .onTapGesture {
                        model.listSelection = .remote
                    }
            }
            .padding(.horizontal)
            switch model.listSelection {
            case .local:
                List {
                    ForEach(model.localMajors, id: \.self) { major in
                        localMajorCell(major)
                    }
                }
            case .remote:
                List {
                    ForEach(model.remoteMajors, id: \.self) { major in
                        remoteMajorCell(major)
                    }
                }
            }
        }
        .sheet(item: $model.localMajorSelection) { major in
            LocalMajorView(model: .init(
                college: model.college,
                major: major,
                remoteMajor: model.remoteMajors.first(where: {
                    $0.name == major.name &&
                    $0.level == major.level &&
                    $0.language == major.language &&
                    $0.duration == major.duration
                })
            ))
        }
        .sheet(item: $model.remoteMajorSelection) { major in
            MajorView(model: .init(major: major, college: model.college, user: .initial(id: "XXX", email: "Email", dateJoined: .now), isFavorite: false, appState: .init()))
        }
    }
    
    @ViewBuilder
    func localMajorCell(_ major: Major) -> some View {
        HStack(alignment: .center, spacing: 8) {
            VStack(alignment: .leading, spacing: 2) {
                Text(major.name)
                    .setFont(.callout, .medium, .rounded)
                    .setColor(Theme.Colors.black)
                VStack(alignment: .leading, spacing: 24) {
                    Text(major.level.rawValue.capitalized)
                        .setFont(.subheadline, .medium, .rounded)
                        .setColor(model.college.palette.base)
                    
                    HStack(spacing: 8) {
                        Text(major.language.inLanguageLabel)
                        Text("•")
                        Text(major.durationLabel)
                        Text("•")
                        Text(major.costLabel)
                    }
                    .setColor(.gray)
                    .setFont(.footnote, .medium, .rounded)
                }
            }
            .padding(.vertical, 4)
            Spacer()
        }
        .badge(
            Text(model.remoteMajors.contains(where: {
                $0.name == major.name &&
                $0.level == major.level &&
                $0.language == major.language &&
                $0.duration == major.duration
            }) ? "Synced" : "Not synced")
            .setFont(.footnote, .regular, .rounded)
        )
        .contentShape(.rect)
        .onTapGesture {
            model.localMajorSelection = major
        }
    }
    
    @ViewBuilder
    func remoteMajorCell(_ major: NewMajor) -> some View {
        HStack(alignment: .center, spacing: 8) {
            VStack(alignment: .leading, spacing: 2) {
                Text(major.name)
                    .setFont(.callout, .medium, .rounded)
                    .setColor(Theme.Colors.black)
                VStack(alignment: .leading, spacing: 24) {
                    Text(major.level.rawValue.capitalized)
                        .setFont(.subheadline, .medium, .rounded)
                        .setColor(model.college.palette.base)
                    HStack(spacing: 8) {
                        Text(major.language.inLanguageLabel)
                        Text("•")
                        Text(major.durationLabel)
                        Text("•")
                        Text(major.costLabel)
                    }
                    .setColor(.gray)
                    .setFont(.footnote, .medium, .rounded)
                }
            }
            .padding(.vertical, 4)
            Spacer()
        }
        .contentShape(.rect)
        .onTapGesture {
            model.remoteMajorSelection = major
        }
    }
}
