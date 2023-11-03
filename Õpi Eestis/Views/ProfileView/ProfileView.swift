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
                title: "Profiili vaatamiseks logi sisse",
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
                label(title: "Minu konto", icon: "person.fill")
                    .onTapGesture {
                        appState.route(to: .myAccount(user))
                    }
                label(title: "Seader", icon: "gearshape.fill")
                    .onTapGesture {
                        appState.route(to: .settings)
                    }
            }
            Section {
                label(title: "Rakendusest", icon: "book.pages.fill")
                    .onTapGesture {
                        appState.route(to: .about)
                    }
                label(title: "Meeldib app? Aita arendajat", icon: "gift.fill")
                    .onTapGesture {
                        isDonationsPresented.toggle()
                    }
            }
            Section {
                Button(action: appState.signout) {
                    Label(title: {
                        Text("Logi välja")
                            .setFont(.body, .regular, .rounded)
                    }, icon: {
                        Image(systemName: "rectangle.portrait.and.arrow.forward")
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
    func label(title: String, icon: String) -> some View {
        Label(title: {
            Text(title)
                .setFont(.body, .regular, .rounded)
        }, icon: {
            Image(systemName: icon)
                .setColor(Theme.Colors.primary.gradient)
        })
        .maxWidth(alignment: .leading)
        .padding(.vertical, 8)
        .overlay(alignment: .trailing, content: chevronRight)
        .contentShape(.rect)
    }
}

struct DonationView: View {
    var body: some View {
        Text("Donations")
    }
}
