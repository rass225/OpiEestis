import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var appState: AppState
    @State var isDonationsPresented = false
    let colleges: [College]
    
    var body: some View {
        switch appState.authState {
        case let .authenticated(user):
            authenticatedView(user: user)
        case .unauthenticated:
            unauthenticatedView()
        }
    }
}

extension ProfileView {
    @ViewBuilder
    func unauthenticatedView() -> some View {
        List {
            Section {
                label(
                    title: Theme.Locale.Profile.about,
                    icon: Theme.Icons.about
                )
                .onTapGesture { appState.route(to: .about) }
                label(
                    title: Theme.Locale.Profile.settings,
                    icon: Theme.Icons.settings
                )
                .onTapGesture { appState.route(to: .settings) }
            }
            Section {
                Button(action: { appState.signInApple() }) {
                    SignInWithAppleButtonViewRepresentable(type: .default, style: .black)
                        .allowsHitTesting(false)
                }
                .frame(height: 55)
                .listRowInsets(.zero)
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal, content: AppPrincipal.init)
        }
    }
    
    @ViewBuilder
    func authenticatedView(user: FirebaseUser) -> some View {
        List {
            Section {
                label(
                    title: Theme.Locale.Profile.myAccount,
                    icon: Theme.Icons.person
                )
                .onTapGesture { appState.route(to: .myAccount(user)) }
                label(
                    title: Theme.Locale.Profile.tests,
                    icon: Theme.Icons.pathfinder
                )
                .onTapGesture {
                    appState.route(to: .testsHistory(colleges: colleges))
                }
                label(
                    title: Theme.Locale.Profile.about,
                    icon: Theme.Icons.about
                )
                .onTapGesture { appState.route(to: .about) }
                label(
                    title: Theme.Locale.Profile.settings,
                    icon: Theme.Icons.settings
                )
                .onTapGesture { appState.route(to: .settings) }
            }

            Section {
                Button(action: appState.signout) {
                    Label(title: {
                        Text(Theme.Locale.Profile.logout)
                            .setFont(.body, .regular, .rounded)
                    }, icon: {
                        Theme.Icons.logout
                    })
                        .maxWidth(alignment: .leading)
                        .padding(.vertical, 8)
                        .setColor(.red)
                }
                .buttonStyle(.borderless)
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal, content: AppPrincipal.init)
        }
        .sheet(isPresented: $isDonationsPresented, content: {
            DonationView()
        })
    }
    
    @ViewBuilder
    func chevronRight() -> some View {
        Theme.Icons.chevronRight
            .setColor(Theme.Colors.secondaryGray)
    }
    
    @ViewBuilder
    func label(title: LocalizedStringKey, icon: Image) -> some View {
        Label(title: {
            Text(title)
                .setFont(.body, .regular, .rounded)
        }, icon: {
            icon
                .setColor(Theme.Colors.primary.gradient)
        })
        .maxWidth(alignment: .leading)
        .padding(.vertical, 8)
        .overlay(alignment: .trailing, content: chevronRight)
        .contentShape(.rect)
    }
}

struct DonationView: View {
    let don: String = "Donations"
    var body: some View {
        Text(don)
    }
}
