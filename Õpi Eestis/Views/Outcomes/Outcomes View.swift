import SwiftUI

struct Outcomes_View: View {
    let major: majorsMinors
    let school: School
    var body: some View {
        Form {
            ForEach(major.outcomes, id: \.self) {
                outcomeCell($0)
            }
        }
        .scrollContentBackground(.hidden)
        .background(Color.whiteDim1)
        .navigationBarBackButtonHidden(true)
        .toolbar{
            AppToolbarItem(.dismiss, color: school.color)
            AppToolbarItem(.title(type: .outcomes), color: school.color)
        }
    }
    
    @ViewBuilder
    func outcomeCell(_ outcome: String) -> some View {
        Text(outcome)
            .font(.regularSubHeadline)
            .foregroundColor(.black)
            .lineSpacing(5)
            .padding(.vertical, 3)
    }
}
