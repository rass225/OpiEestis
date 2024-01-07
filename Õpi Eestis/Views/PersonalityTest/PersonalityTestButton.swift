import SwiftUI

struct PersonalityTestButton: View {
    let height: Double
    let action: () -> ()
    
    init(
        size: CGSize,
        action: @escaping () -> Void
    ) {
        self.height = size.width / 3 * 2.75
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 0) {
                header()
                illustration()
                
            }
            .padding()
            .frame(height: height)
            .maxWidth()
            .background(Theme.Colors.primary.gradient)
            .clipShape(.rect(cornerRadius: 12, style: .continuous))
        }
    }
    
    @ViewBuilder
    func header() -> some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(Theme.Locale.PersonalityTest.name)
                .setFont(.title, .medium, .rounded)
            Text("10 min")
                .setFont(.subheadline, .medium, .rounded)
        }
        .maxWidth(alignment: .leading)
        .setColor(.white)
    }
    
    @ViewBuilder
    func illustration() -> some View {
        Image("personalityIllustration")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}
