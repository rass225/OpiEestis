import SwiftUI

@available(iOS 14.0, *)
struct MajorCell: View {
    @State var item: majorsMinors
    let mereakadeemia = "Eesti Mereakadeemia"
    var body: some View {
        HStack(alignment: .center, spacing: 0){
            VStack(alignment: .leading, spacing: 0){
                Spacer()
                    Text(item.name)
                        .font(Font.callout.weight(.light))
                Spacer()
                HStack{
                    Text(item.level.rawValue)
                    Text("\u{2022}")
                    Text(item.type.rawValue)
                    Text("\u{2022}")
                    Text(item.studyLocation)
                    Spacer()
                }.font(Font.caption2.weight(.light))
                .foregroundColor(Color.black)
            }
            Image(systemName: "chevron.right")
        }
        .frame(height: CustomListCellHeight(), alignment: .leading)
        .padding(.leading, 16)
        .padding(.trailing, 10)
        .padding(.bottom, 16)
        .padding(.top, 10)
        .foregroundColor(Color.white)
        .background(Color.black.opacity(0.3))
        .environment(\.colorScheme, .light)
    }
}

@available(iOS 14.0, *)
extension MajorCell {
    func CustomCellFontSize() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        let screenWidth = UIScreen.main.bounds.width
        if screenHeight > 900 {
            customHeight = screenHeight / 70
        }
        else {
            customHeight = screenWidth / 30
        }
        
        return customHeight
    }
    
    func CustomCellFontSize2() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        let screenWidth = UIScreen.main.bounds.width
        if screenHeight > 900 {
            customHeight = screenHeight / 75
        }
        else {
            customHeight = screenWidth / 40
        }
        
        return customHeight
    }
    func CustomListCellHeight() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        if screenHeight > 900 {
            customHeight = screenHeight / 25
        }
        else {
            customHeight = screenHeight / 22
        }
        
        return customHeight
    }
    func customCornerRadiusFunc() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        let screenWidth = UIScreen.main.bounds.width
        if screenHeight > 900 {
            customHeight = (screenHeight / 4) / 14
        } else {
            customHeight = (screenWidth / 4) / 6
        }
        return customHeight
    }
}
