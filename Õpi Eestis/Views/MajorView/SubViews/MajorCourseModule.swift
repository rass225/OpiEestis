
import SwiftUI

struct MajorCourseModule: View {
    let major: majorsMinors
    let school: School
    var body: some View {
        if major.hasModules() {
            NavigationLink(destination: CourseView(major: major, school: school)) {
                VStack(spacing: 0){
                    HStack{
                        VStack(spacing: 0){
                            Header(type: .modules, school: school)
                            SubHeader(type: .modules(duration: major.duration))
                        }
                        Spacer()
                        Chevron(type: .normal)
                    }
                    Divider()
                }
                .padding(.horizontal, 25)
               
            }
        }
    }
}

