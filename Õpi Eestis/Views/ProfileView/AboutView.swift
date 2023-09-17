import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack(spacing: 0){
            ScrollView {
                Text(OEAppearance.Locale.about.description)
                    .padding(20)
                    .lineSpacing(5)
                    .multilineTextAlignment(.leading)
                    .setFont(.subheadline, .regular, .rounded)
            }
            Divider()
            VStack(spacing: 20){
                Text(OEAppearance.Locale.about.author)
                Text(OEAppearance.Locale.about.copyright)
            }
            .setFont(.footnote, .regular, .rounded)
            .padding(.vertical)
        }
        .setColor(Theme.Colors.black)
        .toolbar {
            ToolbarItem(placement: .principal, content: {
                Text("Rakendusest")
                    .setFont(.body, .medium, .rounded)
            })
            ToolbarItem(placement: .navigationBarLeading, content: backButton)
        }
        .navigationBarTitle(OEAppearance.Locale.title.about, displayMode: .inline)
        .navigationBarBackButtonHidden(true)
    }
    
    @ViewBuilder
    func backButton() -> some View {
        BackButton(color: Theme.Colors.primary)
    }
}
