import SwiftUI

struct MajorsTitleView: View {
    let major: majorsMinors
    let school: School
   
    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 0){
                Text(major.name)
                    .font(.semiBoldTitle)
                Text(major.level.rawValue.capitalizingFirstLetter())
                    .font(.semiBoldTitle2)
                    .foregroundColor(school.color)
            
            }
            
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding([.horizontal], 25)
            .padding(.vertical, 20)
            .padding(.bottom, 20)
        }
    }
}

