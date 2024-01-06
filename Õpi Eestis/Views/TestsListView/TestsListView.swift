import SwiftUI

struct TestsListView: View {
    @EnvironmentObject var appState: AppState
    @StateObject var model: Model
    
    var body: some View {
        GeometryReader(content: { geometry in
            let size = geometry.size
            ScrollView {
                VStack(spacing: 8) {
                    PersonalityTestButton(size: size) {
                        if appState.user == nil {
                            model.openLoginView()
                        } else {
                            appState.route(to: .personalityTests)
                        }
                    }
                }
                .padding(.vertical)
            }
        })
        .padding(.horizontal, 16)
        .background(Theme.Colors.systemGray)
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(.automatic, for: .navigationBar)
        .toolbar {
            ToolbarItem(placement: .principal, content: AppPrincipal.init)
        }
        .sheet(isPresented: $model.isLoginSuggestionPresented) {
            UnauthenticatedView(
                title: Theme.Locale.PersonalityTest.unauthenticated,
                action: {
                    model.closeLoginView()
                    appState.signInApple { result in
                        switch result {
                        case .success:
                            print("Signed in")
                        case let .failure(error):
                            print(error.localizedDescription)
                        }
                    }
                }
            )
        }
    }
}
