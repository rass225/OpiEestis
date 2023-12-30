import SwiftUI

extension PersonalityTestView {
    struct StartView: View {
        let action: () -> ()
        
        var body: some View {
            VStack(spacing: 0) {
                headerView()
                Spacer()
                illustrationView()
                Spacer()
                startButton()
            }
            .maxSize()
            .background(Color.white)
        }
        
        @ViewBuilder
        func headerView() -> some View {
            VStack(alignment: .leading, spacing: 8) {
                Text(Theme.Locale.PersonalityTest.name)
                    .setFont(.title, .semibold, .rounded)
                Text(Theme.Locale.PersonalityTest.Start.promotionalText)
                    .setFont(.subheadline, .regular, .rounded)
                    .setColor(.gray)
            }
            .maxWidth(alignment: .leading)
            .padding(.horizontal, 32)
            .padding(.top, 24)
        }
        
        @ViewBuilder
        func illustrationView() -> some View {
            Image("personalityIllustration")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .maxWidth()
                .padding(.bottom, 24)
        }
        
        @ViewBuilder
        func startButton() -> some View {
            Button(action: action, label: {
                Text(Theme.Locale.PersonalityTest.Start.start)
                    .setColor(.white)
                    .setFont(.title3, .medium, .rounded)
                    .padding(.vertical)
                    .maxWidth()
                    .background(Theme.Colors.primary.gradient)
                    .clipShape(.rect(cornerRadius: 12, style: .continuous))
            })
            .padding(.horizontal, 32)
            .padding(.bottom, 32)
        }
    }
}
