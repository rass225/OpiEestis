import SwiftUI

struct TestsView: View {
    @EnvironmentObject var appState: AppState
    let colleges: [College]
    @State var isLoginSuggestionPresented = false
    var body: some View {
        GeometryReader(content: { geometry in
            let size = geometry.size
            ScrollView {
                VStack(spacing: 8) {
                    Button(action: {
                        if appState.user == nil {
                            isLoginSuggestionPresented = true
                        } else {
                            appState.route(to: .personalityTests)
                        }
                        
                    }, label: {
                        VStack {
                            Text(Theme.Locale.PersonalityTest.name)
                                .setFont(.title2, .medium, .rounded)
                                .maxWidth(alignment: .leading)
                                .setColor(.black)
                            Image("personalityIllustration")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .maxWidth()
                                .padding(.bottom, 24)
                        }
                        .padding([.horizontal, .top])
                        .frame(height: size.width / 3 * 2)
                        .maxWidth()
                        .background(Color.white)
                        .clipShape(.rect(cornerRadius: 12, style: .continuous))
                    })
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
        .sheet(isPresented: $isLoginSuggestionPresented, content: {
            UnauthenticatedView(
                title: Theme.Locale.PersonalityTest.unauthenticated,
                action: {
                    isLoginSuggestionPresented = false
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
        })
    }
}
