import SwiftUI
import Foundation

struct SchoolStatistics: View {
    
    let school: School
    @State var foreignStudentsToggle = false
    @Binding var education: [majorsMinors]
    
    var body : some View {
        HStack(alignment: .center, spacing: 0){
            Spacer()
            SchoolStatistic(label: .student, school: school, majors: education)
            Spacer()
            VStack{
                if foreignStudentsToggle {
                    SchoolStatistic(label: .foreigners(toggle: true), school: school, majors: education)
                } else {
                    SchoolStatistic(label: .foreigners(toggle: false), school: school, majors: education)
                }
            }.onTapGesture { foreignStudentsToggle.toggle() } 
            Spacer()
            SchoolStatistic(label: .location, school: school, majors: education)
            Spacer()
        }
        .padding(.top, 30)
        .padding(.vertical, 4)
        Divider()
            .padding(.top, 25)
            .padding(.horizontal, 24)
    }
}
