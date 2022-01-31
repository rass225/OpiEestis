import SwiftUI

struct Outcomes_View: View {
    let major: majorsMinors
    let school: School
    var body: some View {
        ZStack{
            Color.whiteDim1.edgesIgnoringSafeArea(.all)
            Form{
                Section{
                    ForEach(major.outcomes, id: \.self) { item in
                        Text(item)
                            .font(.regularSubHeadline)
                            .foregroundColor(.black)
                            .lineSpacing(5)
                            .padding(.vertical, 3)
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar{
            AppToolbarItem(.dismiss, color: school.color)
            AppToolbarItem(.title(type: .outcomes), color: school.color)
        }
    }
}
