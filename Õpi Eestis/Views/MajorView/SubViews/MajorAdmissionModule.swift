import SwiftUI

struct MajorAdmissionModule: View {
    let major: majorsMinors
    let school: School
    var body: some View {
        NavigationLink(destination: Requirements_View(requirements: major.requirements, school: school)) {
            VStack(spacing: 0){
                HStack{
                    VStack(spacing: 0){
                        Header(type: .acceptance, school: school)
                        SubHeader(type: .acceptance)
                    }
                    Spacer()
                    Chevron(type: .normal)
                }
                Divider()
            }.padding(.horizontal, 25)
        }
    }
}
