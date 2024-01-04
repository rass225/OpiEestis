import SwiftUI

struct TestsHistoryView: View {
    @EnvironmentObject var appState: AppState
    @StateObject var model: Model
    
    var body: some View {
        GeometryReader(content: { geometry in
            let size = geometry.size
            ScrollView {
                VStack(spacing: 8) {
                    Button(action: {
                        appState.route(to: .personalityTestHistory)
                    }, label: {
                        VStack {
                            Text(Theme.Locale.PersonalityTest.name)
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
        .navigationBarBackButtonHidden()
        .toolbarBackground(.automatic, for: .navigationBar)
        .toolbar {
            ToolbarItem(placement: .principal, content: titleView)
            ToolbarItem(placement: .topBarLeading, content: backButton)
        }
    }
    
    @ViewBuilder
    func backButton() -> some View {
        BackButton(color: Theme.Colors.primary)
    }
    
    @ViewBuilder
    func titleView() -> some View {
        TitleView(Theme.Locale.Tests.title)
    }
}
