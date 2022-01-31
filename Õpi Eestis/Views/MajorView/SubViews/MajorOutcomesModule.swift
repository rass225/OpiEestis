import SwiftUI

struct MajorOutcomesModule: View {
    let major: majorsMinors
    let school: School
    var body: some View {
        NavigationLink(destination: Outcomes_View(major: major, school: school)) {
            VStack(spacing: 0){
                HStack{
                    VStack(spacing: 0){
                        Header(type: .outcomes, school: school)
                        SubHeader(type: .outcomes)
                    }
                    Spacer()
                    Chevron(type: .normal)
                }
                Divider()
            }.padding(.horizontal, 25)
        }
    }
}
