import SwiftUI

struct TestsHistoryView: View {
    @EnvironmentObject var appState: AppState
    @StateObject var model: Model
    
    var body: some View {
        GeometryReader(content: { geometry in
            let size = geometry.size
            ScrollView {
                VStack(spacing: 8) {
                    PersonalityTestButton(size: size) {
                        appState.route(to: .personalityTestHistory)
                    }
                }
                .padding(.vertical)
            }
        })
        .padding(.horizontal, 16)
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
    
    @ViewBuilder
    func mbtiTestCell(size: CGSize) -> some View {
        Button(action: {
            appState.route(to: .personalityTestHistory)
        }, label: {
            VStack(spacing: 0) {
                Text(Theme.Locale.PersonalityTest.name)
                    .setFont(.title2, .medium, .rounded)
                    .maxWidth(alignment: .leading)
                    .setColor(.white)
                Image("personalityIllustration")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .maxWidth()
                    .padding(.bottom, 8)
            }
            .padding([.horizontal, .top])
            .frame(height: size.width / 3 * 2)
            .maxWidth()
            .background(
                ZStack {
                    Color.white
                    LinearGradient(
                        gradient: Gradient(colors: [Theme.Colors.primary.opacity(1), Color.white]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                }
            )
            .clipShape(.rect(cornerRadius: 12, style: .continuous))
        })
    }
}
