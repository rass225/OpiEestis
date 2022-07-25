import SwiftUI

struct MajorWebsiteModule: View {
    let major: majorsMinors
    let school: School
    var body: some View {
        Button(action: {
            guard let url = URL(string: major.majorWebsite) else { return }
            UIApplication.shared.open(url)
        }) {
            VStack(spacing: 0){
                HStack(alignment: .center, spacing: 0){
                    VStack(spacing: 0){
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

