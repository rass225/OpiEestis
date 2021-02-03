import SwiftUI

struct MajorCell: View {
    @State var item: majorsMinors
    let mereakadeemia = "Eesti Mereakadeemia"
    var body: some View {
        HStack(alignment: .center, spacing: 0){
            VStack(alignment: .leading){
                HStack{
                    Text(item.name).font(.semiboldCallout)
                    Spacer()
                }
                Spacer()
                HStack(spacing: 20){
                    HStack(spacing: 2){
                        Image(systemName: .locationFill)
                        ForEach(item.studyLocation, id: \.self) { item in
                            Text(item)
                        }
                    }
                    HStack(spacing: 2){
                        Image(systemName: .clockFill)
                        Text(item.duration.isInt()
                                ? "\(Int(item.duration))a":
                                "\(item.duration, specifier: "%.1f")a")
                    }
                    HStack(spacing: 2){
                        Image(systemName: .thermometer)
                        Text(item.level.rawValue.capitalizingFirstLetter())
                    }
                }.font(.regularCaption)
            }
        }
        .frame(height: 48, alignment: .leading)
        .padding(.leading, 16)
        .padding(.trailing, 10)
        .padding(.bottom, 8)
        .padding(.top, 6)
        .foregroundColor(Color.black)
//        .background(Color.black.opacity(0.3))
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
}
