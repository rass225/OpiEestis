import SwiftUI

struct PathFinderSetupView: View {
    let completion: (EducationLevel, Bool, Bool) -> ()
    @State private var currentEducation: EducationLevel = .basic
    @State private var isSpeakingEstonian: Bool = true
    @State private var isSpeakingEnglish: Bool = true
    var body: some View {
        VStack(spacing: 0) {
            hiddenView()
            GeometryReader { geo in
                let size = geo.size
                VStack(alignment: .leading, spacing: 24) {
                    Text(Theme.Locale.PathFinder.Setup.title)
                        .setFont(.title, .medium, .rounded)
                        .setColor(Theme.Colors.black)
                        .padding(.bottom)
                    VStack(spacing: 8) {
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
                        Toggle(Theme.Locale.PathFinder.Setup.speakEstonianQuestion, isOn: $isSpeakingEstonian)
                                .tint(Theme.Colors.primary.gradient)
                        
                        .setFont(.subheadline, .medium, .rounded)
                        .padding(.vertical, 12)
                        .maxWidth(alignment: .leading)
                        .padding(.horizontal, 12)
                        .background(Theme.Colors.systemGray)
                        .clipShape(.rect(cornerRadius: 12, style: .continuous))
                        
                        Toggle(Theme.Locale.PathFinder.Setup.speakEnglishQuestion, isOn: $isSpeakingEnglish)
                                .tint(Theme.Colors.primary.gradient)
                        
                        .setFont(.subheadline, .medium, .rounded)
                        .padding(.vertical, 12)
                        .maxWidth(alignment: .leading)
                        .padding(.horizontal, 12)
                        .background(Theme.Colors.systemGray)
                        .clipShape(.rect(cornerRadius: 12, style: .continuous))
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
                .shadow(color: Theme.Colors.gray.opacity(0.4), radius: 4, x: 0, y: 0)
                .padding(.horizontal, 20)
                .frame(height: size.height / 1.1)
                
                .maxSize()
                .background(Theme.Colors.white)
            }
        }
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
            .onTapGesture {
                completion(
                    currentEducation,
                    isSpeakingEstonian,
                    isSpeakingEnglish
                )
            }
    }
    
    @ViewBuilder
    func hiddenView() -> some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 2) {
                Text("s")
                Text("s")
            }
            .setColor(.black)
            .setFont(.title3, .medium, .rounded)
            Text("s")
                .frame(height: 20)
        }
        .padding(.vertical)
        .padding(.bottom)
        .padding(.horizontal, 24)
        .maxWidth()
        .opacity(0)
        .background(.white)
    }
}
