import SwiftUI

struct PersonalityTestHistoryView: View {
    @EnvironmentObject var appState: AppState
    @StateObject var model: Model
    
    var body: some View {
        List {
            VStack(spacing: 4) {
                ForEach(model.personalityTestHistory, id: \.self) {
                    testCell($0)
                }
            }
            .listRowInsets(.zero)
            .listRowBackground(Color.clear)
        }
        .navigationBarBackButtonHidden()
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal, content: titleView)
            ToolbarItem(placement: .topBarLeading, content: backButton)
        }
    }
}

// MARK: - Cells
private extension PersonalityTestHistoryView {
    @ViewBuilder
    func testCell(_ test: PersonalityTestResult) -> some View {
        HStack {
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading, spacing: 2) {
                    Text(test.personalityType.rawValue)
                        .setFont(.title3, .medium, .rounded)
                        .setColor(.black)
                    Text(model.currentLocale == .estonian ? test.personalityType.title.capitalized : test.personalityType.titleEn.capitalized)
                        .setFont(.subheadline, .medium, .rounded)
                        .setColor(.gray)
                }
                .maxWidth(alignment: .leading)
                Text(test.dateCreated)
                    .setFont(.footnote, .regular, .rounded)
                    .setColor(.gray)
            }
            Spacer()
            chevronRight()
        }
        .padding()
        .maxWidth()
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 12, style: .continuous))
        .onTapGesture {
            appState.route(to: .personalityTestResult(result: test))
        }
    }
}

// MARK: - View Components
private extension PersonalityTestHistoryView {
    @ViewBuilder
    func backButton() -> some View {
        BackButton(color: Theme.Colors.primary)
    }
    
    @ViewBuilder
    func titleView() -> some View {
        TitleView(Theme.Locale.PersonalityTest.History.title)
    }
    
    @ViewBuilder
    func chevronRight() -> some View {
        Theme.Icons.chevronRight
            .setColor(Theme.Colors.secondaryGray)
    }
}
