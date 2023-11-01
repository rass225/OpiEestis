import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            Section(content: languageContent, header: languageHeader)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading, content: backButton)
            ToolbarItem(placement: .principal, content: titleView)
        }
    }
}

extension SettingsView {
    @ViewBuilder
    func backButton() -> some View {
        BackButton(color: Theme.Colors.primary)
    }
    
    @ViewBuilder
    func titleView() -> some View {
        Text("Seaded")
            .setFont(.title3, .semibold, .rounded)
    }
    
    @ViewBuilder
    func languageHeader() -> some View {
        Text("Keel")
    }
    
    @ViewBuilder
    func languageContent() -> some View {
        HStack {
            Text("Eesti keel")
            Spacer()
            Circle()
                .fill(Theme.Colors.primary.opacity(0.2))
                .frame(width: 24)
                .overlay {
                    Circle()
                        .fill(Theme.Colors.primary.gradient)
                        .frame(width: 14)
                }
        }
        HStack {
            Text("Inglise keel")
            Spacer()
            Circle()
                .fill(Theme.Colors.primary.opacity(0.2))
                .frame(width: 24)
        }
    }
}

#Preview {
    SettingsView()
}
