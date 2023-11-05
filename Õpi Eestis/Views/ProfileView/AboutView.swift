import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack(spacing: 0){
            List {
                Section {
                    Text(Theme.Locale.About.description)
                        .lineSpacing(5)
                        .multilineTextAlignment(.leading)
                        .setFont(.subheadline, .regular, .rounded)
                }
                Section {
                    VStack(spacing: 20){
                        Text(Theme.Locale.About.author)
                        Text(Theme.Locale.About.copyright)
                    }
                    .padding(.top)
                    .maxWidth()
                    .setFont(.footnote, .regular, .rounded)
                    .setColor(Theme.Colors.gray)
                }
                .listRowBackground(Color.clear)
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading, content: backButton)
            ToolbarItem(placement: .principal, content: titleView)
        }
        .navigationBarBackButtonHidden(true)
    }
    
    @ViewBuilder
    func backButton() -> some View {
        BackButton(color: Theme.Colors.primary)
    }
    
    @ViewBuilder
    func titleView() -> some View {
        Text(Theme.Locale.About.title)
            .setFont(.title3, .semibold, .rounded)
    }
}
