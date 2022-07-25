import SwiftUI

struct SchoolWebsiteView: View {
    let school: School
    var body: some View {
        Button(action: {
            school.goHomePage()
        }) {
            VStack(alignment: .leading, spacing: 0){
                HStack(alignment: .center, spacing: 0){
                    VStack(alignment: .leading, spacing: 0){
                        Header(type: .homepage, school: school)
                        SubHeader(type: .homepage)
                    }
                    Spacer()
                    Chevron(type: .link)
                }
                Divider()
            }.padding(.horizontal, 25)
        }
    }
}
