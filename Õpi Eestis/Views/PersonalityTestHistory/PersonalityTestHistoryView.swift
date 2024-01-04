import SwiftUI

struct PersonalityTestHistoryView: View {
    @EnvironmentObject var appState: AppState
    @StateObject var model: Model
    
    var body: some View {
        List {
            VStack(spacing: 4) {
                ForEach(model.personalityTestHistory, id: \.self) { test in
                    testCell(test)
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
    
    @ViewBuilder
    func backButton() -> some View {
        BackButton(color: Theme.Colors.primary)
    }
    
    @ViewBuilder
    func titleView() -> some View {
        TitleView(Theme.Locale.PersonalityTest.History.title)
    }
    
    @ViewBuilder
    func testCell(_ test: PersonalityTestResult) -> some View {
        HStack {
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading, spacing: 2) {
                    Text(test.personalityType.rawValue)
                        .setFont(.title3, .medium, .rounded)
                        .setColor(.black)
//                    Text("-")
//                        .setColor(.gray)
                    if model.currentLocale == .estonian {
                        Text(test.personalityType.title.capitalized)
                            .setFont(.subheadline, .medium, .rounded)
                            .setColor(Theme.Colors.primary.gradient)
                    } else {
                        Text(test.personalityType.titleEn.capitalized)
                            .setFont(.subheadline, .medium, .rounded)
                            .setColor(.gray)
                    }
                }
                .maxWidth(alignment: .leading)
                Text(test.dateCreated)
                    .setFont(.footnote, .regular, .rounded)
                    .setColor(.gray)
            }
            Spacer()
            Chevron(type: .normal)
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
