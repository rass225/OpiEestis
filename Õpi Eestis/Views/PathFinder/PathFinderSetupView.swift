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
                titleView()
                VStack(spacing: 8) {
                    educationPicker()
                        .padding(.leading, 32)
                        .padding(.trailing, 20)
                    estoniaToggle()
                        .padding(.horizontal, 32)
                    englishToggle()
                        .padding(.horizontal, 32)
                }
                .maxHeight(alignment: .top)
                .padding(.top, 16)
                
                setupButton()
            }
        }
        
        @ViewBuilder
        func titleView() -> some View {
            Text(Theme.Locale.PathFinder.Setup.title)
                .setFont(.title, .semibold, .rounded)
                .maxWidth(alignment: .leading)
                .padding(.horizontal, 32)
                .padding(.top, 32)
        }
        
        @ViewBuilder
        func setupButton() -> some View {
            Text(Theme.Locale.PathFinder.Setup.continues)
                .setColor(.white)
                .setFont(.title3, .medium, .rounded)
                .padding(.vertical)
                .maxWidth()
                .background(Theme.Colors.primary.gradient)
                .clipShape(.rect(cornerRadius: 12, style: .continuous))
                .contentShape(.rect)
                .onTapGesture(perform: completion)
                .padding(.horizontal, 32)
                .padding(.bottom, 32)
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
            .padding(.vertical, 4)
            .maxWidth(alignment: .leading)
        }
        
        @ViewBuilder
        func englishToggle() -> some View {
            Toggle(Theme.Locale.PathFinder.Setup.speakEnglishQuestion, isOn: $isSpeakingEnglish)
                    .tint(Theme.Colors.primary.gradient)
            
            .setFont(.subheadline, .medium, .rounded)
            .padding(.vertical, 4)
            .maxWidth(alignment: .leading)
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
                .padding(.vertical, 4)
                .setFont(.subheadline, .regular, .rounded)
                .pickerStyle(.menu)
                .tint(Theme.Colors.primary.gradient)
            }
        }
    }
}

