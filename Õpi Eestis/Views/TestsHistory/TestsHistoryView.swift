import SwiftUI

struct TestsHistoryView: View {
    @EnvironmentObject var appState: AppState
    @StateObject var model: Model
    
    var body: some View {
        GeometryReader(content: { geometry in
            let size = geometry.size
            ScrollView {
                VStack(spacing: 8) {
                    PersonalityTestView.PersonalityTestButton(size: size) {
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
}
