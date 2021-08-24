import SwiftUI

struct MajorsTitleView: View {
    let major: majorsMinors
    let color: Color
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text(major.name)
                .font(.semiBoldTitle)
            Text(major.level.rawValue.capitalizingFirstLetter())
                .font(.semiBoldTitle2)
                .foregroundColor(color)
        }.frame(maxWidth: .infinity, alignment: .leading)
        .padding([.horizontal, .bottom], 30)
        .padding(.bottom, 20)
        .background(Color.white)
        .cornerRadiusCustom(50, corners: [.bottomLeft, .bottomRight])
        .miniShadow()
        .padding(.bottom, 20)
    }
}
