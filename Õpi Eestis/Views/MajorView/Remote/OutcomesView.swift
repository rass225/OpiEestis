import SwiftUI

struct OutcomesView: View {
    let college: College
    let outcomes: [NewOutcome]
    
    var body: some View {
        List(outcomes) { outcome in
            outcomeCell(outcome)
        }
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading, content: backButton)
            ToolbarItem(placement: .principal, content: titleView)
        }
    }
}

// MARK: - Cells
private extension OutcomesView {
    @ViewBuilder
    func outcomeCell(_ outcome: NewOutcome) -> some View {
        Text(.init(outcome.description))
            .setFont(.subheadline, .regular, .rounded)
            .setColor(Theme.Colors.black)
    }
}

// MARK: - View Components
private extension OutcomesView {
    @ViewBuilder
    func backButton() -> some View {
        BackButton(color: college.palette.base)
    }
    
    @ViewBuilder
    func titleView() -> some View {
        Text(Theme.Locale.Outcomes.title)
            .setFont(.title3, .semibold, .rounded)
    }
}
