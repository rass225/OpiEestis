import SwiftUI

struct ProfileView: View {
    @State var isDonationsPresented = false
    var body: some View {
        List {
            Text("Tere")
            Section {
                NavigationLink(destination: AboutView(), label: {
                    Text("Rakendusest")
                })
            }
            Section {
                HStack(spacing: 16) {
                    Image(systemName: "gift")
                        .setFont(.title3, .medium, .rounded)
                        .frame(width: 25, height: 30)
                    Text("Meeldib app? Aita arendajat")
                        .setFont(.subheadline, .medium, .rounded)
                        
                }
                .maxWidth(alignment: .leading)
                .contentShape(Rectangle())
                .onTapGesture {
                    isDonationsPresented.toggle()
                }
                .listRowBackground(
                    Rectangle()
                        .fill(Theme.Colors.primary.gradient)
                )
                .foregroundColor(.white)
            }
            Section {
                Button(action: { print("Log out") }) {
                    HStack(spacing: 16) {
                        Image(systemName: "rectangle.portrait.and.arrow.forward")
                            .setFont(.title3, .medium, .rounded)
                            .frame(width: 25, height: 30)
                        Text("Logi välja")
                            .setFont(.subheadline, .medium, .rounded)
                    }
                    .setColor(.red)
                    .maxWidth(alignment: .leading)
                }
                .buttonStyle(.borderless)
            }
        }
        .navigationTitle(Text("Hello, Rasmus"))
        .sheet(isPresented: $isDonationsPresented, content: {
            DonationView()
        })
    }
}


struct DonationView: View {
    
    var body: some View {
        Text("Donations")
    }
}
