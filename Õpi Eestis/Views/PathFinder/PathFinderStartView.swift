import SwiftUI

extension PathFinderView {
    struct StartView: View {
        let action: () -> ()
        
        var body: some View {
            VStack(spacing: 0) {
                headerView()
                Spacer()
                Image("pathfinderIllustration")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .maxWidth()
                    .padding(.bottom, 24)
                Spacer()
                startButton()
            }
            .maxSize()
            .background(Color.white)
        }
        
        @ViewBuilder
        func startButton() -> some View {
            Button(action: action, label: {
                Text(Theme.Locale.PathFinder.Start.start)
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
        
        @ViewBuilder
        func headerView() -> some View {
            VStack(alignment: .leading, spacing: 8) {
                Text(Theme.Locale.PathFinder.name)
                    .setFont(.title, .semibold, .rounded)
                Text(Theme.Locale.PathFinder.Start.promotionalText)
                    .setFont(.subheadline, .regular, .rounded)
                    .setColor(.gray)
            }
            .maxWidth(alignment: .leading)
            .padding(.horizontal, 32)
            .padding(.top, 24)
        }
        
        struct FeatureView: View {
            let iconName: String
            let featureTitle: LocalizedStringKey
            let featureDescription: LocalizedStringKey
            
            var body: some View {
                HStack(spacing: 16) {
                    Image(systemName: iconName)
                        .setFont(.title, .regular, .rounded)
                        .setColor(Theme.Colors.primary.gradient)
                        .frame(width: 32, alignment: .leading)
                    VStack(alignment: .leading, spacing: 2) {
                        Text(featureTitle)
                            .setFont(.title3, .medium, .rounded)
                        Text(featureDescription)
                            .lineLimit(nil)
                            .setFont(.footnote, .regular, .rounded)
                            .setColor(.gray)
                            .maxWidth(alignment: .leading)
                    }
                }
            }
        }
    }
}
