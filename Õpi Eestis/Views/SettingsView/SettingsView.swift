import SwiftUI

struct SettingsView: View {
    @ObservedObject var localeManager = DependencyManager.shared.localeManager
    var body: some View {
        List {
            Section(content: languageContent, header: languageHeader)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading, content: backButton)
            ToolbarItem(placement: .principal, content: titleView)
        }
    }
}

// MARK: - Headers
extension SettingsView {
    @ViewBuilder
    func languageHeader() -> some View {
        Text(Theme.Locale.Settings.language)
            .textCase(.none)
            .setFont(.subheadline, .regular, .rounded)
    }
}

// MARK: - Contents
private extension SettingsView {
    @ViewBuilder
    func languageContent() -> some View {
        ForEach(AppLocale.allCases, id: \.self) { locale in
            HStack {
                Text(locale.label)
                Spacer()
                if localeManager.currentLocale == locale {
                    selectedCircle()
                } else {
                    unselectedCircle()
                }
            }
            .contentShape(.rect)
            .onTapGesture {
                localeManager.setLocale(locale)
            }
        }
    }
}

// MARK: - View Components
private extension SettingsView {
    @ViewBuilder
    func selectedCircle() -> some View {
        Circle()
            .fill(Theme.Colors.primary.opacity(0.2))
            .frame(width: 24)
            .overlay {
                Circle()
                    .fill(Theme.Colors.primary.gradient)
                    .frame(width: 14)
            }
    }
    
    @ViewBuilder
    func unselectedCircle() -> some View {
        Circle()
            .fill(Theme.Colors.primary.opacity(0.2))
            .frame(width: 24)
    }
    
    @ViewBuilder
    func backButton() -> some View {
        BackButton(color: Theme.Colors.primary)
    }
    
    @ViewBuilder
    func titleView() -> some View {
        TitleView(Theme.Locale.Settings.title)
    }
}
