import SwiftUI

extension PersonalityTestView {
    struct PersonalityTestResultView: View {
        
        let personalityType: PersonalityType
        
        var body: some View {
            List {
                headerView()
                careersView()
                strengthsView()
                weaknessesView()
            }
        }
    }
}

extension PersonalityTestView.PersonalityTestResultView {
    @ViewBuilder
    func headerView() -> some View {
        Section(content: {
            VStack {
                Text("\(personalityType.rawValue)")
                    .setFont(.largeTitle, .semibold, .rounded)
                    .padding()
                    .background(Theme.Colors.primary.opacity(0.175))
                    .clipShape(.rect(cornerRadius: 12, style: .continuous))
                    .padding(.top, 32)
                
                Text("You are \(personalityType.title)")
                    .setFont(.title3, .medium, .rounded)
                    .padding(.top)
                Text(personalityType.description)
                    .setFont(.subheadline, .regular, .rounded)
                    .setColor(Theme.Colors.gray)
            }
            .maxWidth()
        })
        .listRowInsets(.zero)
        .listRowBackground(Color.clear)
    }
    
    @ViewBuilder
    func weaknessesView() -> some View {
        Section(content: {
            ForEach(personalityType.weaknesses, id: \.self) { career in
                Text(career)
                    .setFont(.subheadline, .regular, .rounded)
            }
        }, header: {
            Text("Weaknesses")
                .textCase(.none)
                .setFont(.body, .medium, .rounded)
        })
    }
    
    @ViewBuilder
    func strengthsView() -> some View {
        Section(content: {
            ForEach(personalityType.strengths, id: \.self) { career in
                Text(career)
                    .setFont(.subheadline, .regular, .rounded)
            }
        }, header: {
            Text("Strengths")
                .textCase(.none)
                .setFont(.body, .medium, .rounded)
        })
    }
    
    @ViewBuilder
    func careersView() -> some View {
        Section(content: {
            ForEach(personalityType.careers, id: \.self) { career in
                Text(career)
                    .setFont(.subheadline, .regular, .rounded)
            }
        }, header: {
            Text("Careers")
                .textCase(.none)
                .setFont(.body, .medium, .rounded)
        })
    }
}
