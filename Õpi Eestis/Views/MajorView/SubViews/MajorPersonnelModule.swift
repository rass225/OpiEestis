
import SwiftUI

struct MajorPersonnelModule: View {
    let major: majorsMinors
    let school: School
    var body: some View {
        if major.hasPersonnel() {
            NavigationLink(destination: PersonnelView(major: major, school: school)) {
                VStack(spacing: 0){
                    HStack(alignment: .center, spacing: 0){
                        VStack(spacing: 0){
                            Header(type: .personel, school: school)
                            SubHeader(type: .personel)
                        }
                        Spacer()
                        Chevron(type: .normal)
                    }
                    Divider()
                }.padding(.horizontal, 25)
            }
        }
    }
}
