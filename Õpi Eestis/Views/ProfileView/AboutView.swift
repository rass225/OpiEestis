import SwiftUI

struct AboutView: View {
    
    @Environment(\.dismiss) var dismiss
    
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
        .setColor(.black)
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
        Button(action: { dismiss() }) {
            Image.chevronLight
                .setFont(.callout, .bold, .rounded)
                .setColor(Color.oeBlue.gradient)
                .padding(.leading, 8)
        }
    }
}
