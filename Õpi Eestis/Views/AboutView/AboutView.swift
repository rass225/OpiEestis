import SwiftUI

struct AboutView: View {
    @EnvironmentObject var appState: AppState
    @StateObject var model: Model = .init()
    
    var body: some View {
        List {
            Section(content: descriptionContent)
            Section(content: copyrightContent)
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading, content: backButton)
            ToolbarItem(placement: .principal, content: titleView)
        }
    }
}

// MARK: - Contents
private extension AboutView {
    @ViewBuilder
    func descriptionContent() -> some View {
        Text(.init(model.description))
            .lineSpacing(5)
            .multilineTextAlignment(.leading)
            .setFont(.subheadline, .regular, .rounded)
    }
    
    @ViewBuilder
    func copyrightContent() -> some View {
        VStack(spacing: 20){
            Text(Theme.Locale.About.author)
            Text(Theme.Locale.About.copyright)
        }
        .padding(.top)
        .maxWidth()
        .setFont(.footnote, .regular, .rounded)
        .setColor(Theme.Colors.gray)
        .listRowBackground(Color.clear)
    }
}

// MARK: - View Components
private extension AboutView {
    @ViewBuilder
    func backButton() -> some View {
        BackButton(color: Theme.Colors.primary)
    }
    
    @ViewBuilder
    func titleView() -> some View {
        TitleView(Theme.Locale.About.title)
    }
}
