import SwiftUI

extension PathFinderView {
    struct PathFinderSetupView: View {
        let completion: () -> ()
        @Binding var currentEducation: EducationLevel
        @Binding var isSpeakingEstonian: Bool
        @Binding var isSpeakingEnglish: Bool
        private let shadowColor = Theme.Colors.gray.opacity(0.4)
        var body: some View {
            VStack(spacing: 0) {
                headerView()
                GeometryReader { geo in
                    let size = geo.size
                    VStack(alignment: .leading, spacing: 24) {
                        titleView()
                        VStack(spacing: 8) {
                            educationPicker()
                            estoniaToggle()
                            englishToggle()
                        }
                        .maxHeight(alignment: .top)
                        HStack {
                            Spacer()
                            setupButton()
                        }
                    }
                    .padding(16)
                    .maxSize(alignment: .top)
                    .background(Theme.Colors.white)
                    .clipShape(.rect(cornerRadius: 16, style: .continuous))
                    .shadow(color: shadowColor, radius: 4, x: 0, y: 0)
                    .padding(.horizontal, 20)
                    .frame(height: size.height / 1.1)
                    .maxSize()
                    .background(Theme.Colors.white)
                }
            }
        }
        
        @ViewBuilder
        func titleView() -> some View {
            Text(Theme.Locale.PathFinder.Setup.title)
                .setFont(.title, .medium, .rounded)
                .setColor(Theme.Colors.black)
                .padding(.bottom)
        }
        
        @ViewBuilder
        func setupButton() -> some View {
            Text(Theme.Locale.PathFinder.Setup.continues)
                .setFont(.subheadline, .medium, .rounded)
                .setColor(.white)
                .padding(.vertical, 12)
                .padding(.horizontal, 20)
                .background(Theme.Colors.primary.gradient)
                .clipShape(.rect(cornerRadius: 12, style: .continuous))
                .contentShape(.rect)
                .onTapGesture(perform: completion)
        }
        
        @ViewBuilder
        func headerView() -> some View {
            Text(Theme.Locale.PathFinder.name)
                .setFont(.largeTitle, .semibold, .rounded)
                .padding(.horizontal, 32)
                .padding(.top, 32)
                .padding(.bottom, 28)
                .maxWidth()
                .background(Color.white)
        }
        
        @ViewBuilder
        func estoniaToggle() -> some View {
            Toggle(Theme.Locale.PathFinder.Setup.speakEstonianQuestion, isOn: $isSpeakingEstonian)
                    .tint(Theme.Colors.primary.gradient)
            
            .setFont(.subheadline, .medium, .rounded)
            .padding(.vertical, 12)
            .maxWidth(alignment: .leading)
            .padding(.horizontal, 12)
            .background(Theme.Colors.systemGray)
            .clipShape(.rect(cornerRadius: 12, style: .continuous))
        }
        
        @ViewBuilder
        func englishToggle() -> some View {
            Toggle(Theme.Locale.PathFinder.Setup.speakEnglishQuestion, isOn: $isSpeakingEnglish)
                    .tint(Theme.Colors.primary.gradient)
            
            .setFont(.subheadline, .medium, .rounded)
            .padding(.vertical, 12)
            .maxWidth(alignment: .leading)
            .padding(.horizontal, 12)
            .background(Theme.Colors.systemGray)
            .clipShape(.rect(cornerRadius: 12, style: .continuous))
        }
        
        @ViewBuilder
        func educationPicker() -> some View {
            HStack {
                Text(Theme.Locale.PathFinder.Setup.yourCurrentEducation)
                    .setFont(.subheadline, .medium, .rounded)
                    .maxWidth(alignment: .leading)
                Picker("", selection: $currentEducation) {
                    ForEach(EducationLevel.allCases, id: \.self) {
                        Text($0.label)
                    }
                }
                .padding(.vertical, 12)
                .setFont(.subheadline, .regular, .rounded)
                .pickerStyle(.menu)
                .tint(Theme.Colors.primary.gradient)
            }
            .padding(.leading, 12)
            .background(Theme.Colors.systemGray)
            .clipShape(.rect(cornerRadius: 12, style: .continuous))
        }
    }
}

