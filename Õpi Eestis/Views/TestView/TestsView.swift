import SwiftUI

struct TestsView: View {
    @EnvironmentObject var appState: AppState
    let colleges: [College]
    var body: some View {
        GeometryReader(content: { geometry in
            let size = geometry.size
            ScrollView {
                VStack(spacing: 8) {
                    Button(action: {
                        appState.route(to: .pathfinder(colleges: colleges))
                    }, label: {
                        VStack {
                            Text("Pathfinder")
                                .setFont(.body, .regular, .rounded)
                            Text("Design coming soon")
                                .setColor(.gray)
                                .setFont(.footnote, .regular, .rounded)
                        }
                        .frame(height: size.width / 3 * 2)
                        .maxWidth()
                        .background(Color.white)
                        .clipShape(.rect(cornerRadius: 12, style: .continuous))
                    })
                    Button(action: {
                        appState.route(to: .personalityTests)
                    }, label: {
                        VStack {
                            Text("Personality Test")
                                .setFont(.body, .regular, .rounded)
                            Text("Design coming soon")
                                .setColor(.gray)
                                .setFont(.footnote, .regular, .rounded)
                        }
                        .frame(height: size.width / 3 * 2)
                        .maxWidth()
                        .background(Color.white)
                        .clipShape(.rect(cornerRadius: 12, style: .continuous))
                    })
                }
                .padding(.vertical)
            }
        })
        .padding(.horizontal, 20)
        .background(Theme.Colors.systemGray)
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(.automatic, for: .navigationBar)
        .toolbar {
            ToolbarItem(placement: .principal, content: AppPrincipal.init)
        }
    }
}
