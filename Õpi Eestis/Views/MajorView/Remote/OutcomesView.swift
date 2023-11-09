import SwiftUI

struct OutcomesView: View {
    let college: College
    let outcomes: [NewOutcome]
    
    var body: some View {
        List(outcomes) { outcome in
            Text(.init(outcome.description))
                .setFont(.subheadline, .regular, .rounded)
                .setColor(Theme.Colors.black)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading, content: backButton)
            ToolbarItem(placement: .principal, content: titleView)
        }
        .navigationBarBackButtonHidden(true)
    }
    
    @ViewBuilder
    func backButton() -> some View {
        BackButton(color: college.palette.base)
    }
    
    @ViewBuilder
    func titleView() -> some View {
        Text("Õpiväljundid")
            .setFont(.title3, .semibold, .rounded)
    }
}
