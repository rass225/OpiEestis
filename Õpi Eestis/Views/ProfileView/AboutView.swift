import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack(spacing: 0){
            List {
                Section {
                    Text(OEAppearance.Locale.about.description)
                        .lineSpacing(5)
                        .multilineTextAlignment(.leading)
                        .setFont(.subheadline, .regular, .rounded)
                }
                Section {
                    VStack(spacing: 20){
                        Text(OEAppearance.Locale.about.author)
                        Text(OEAppearance.Locale.about.copyright)
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
        Text(OEAppearance.Locale.title.about)
            .setFont(.title3, .semibold, .rounded)
    }
}
