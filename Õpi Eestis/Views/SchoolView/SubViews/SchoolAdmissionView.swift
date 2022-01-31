import SwiftUI

struct SchoolAdmissionView: View {
    let school: School
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Header(type: .admission, school: school)
            ForEach(school.vastuvõtt, id: \.self) { item in
                SubHeader(type: .admission(range: item))
            }
            Divider()
        }
        .padding(.horizontal, 25)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

