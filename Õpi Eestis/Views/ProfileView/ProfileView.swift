import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var appState: AppState
    @State var isDonationsPresented = false
    var body: some View {
        switch appState.authState {
        case let .authenticated(user):
            authenticatedView(user: user)
        case .unauthenticated:
            UnauthenticatedView(
                title: Theme.Locale.Profile.unauthenticated,
                action: appState.signInApple
            )
        }
    }
}

extension ProfileView {
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
                
                
//                label(
//                    title: Theme.Locale.Profile.donations,
//                    icon: Theme.Icons.donations
//                )
//                .onTapGesture { isDonationsPresented.toggle() }
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
