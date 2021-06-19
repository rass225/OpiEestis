import SwiftUI

struct MajorCell: View {
    @State var item: majorsMinors
    var body: some View {
        HStack(alignment: .center, spacing: 0){
            VStack(alignment: .leading){
                HStack{
                    Text(item.name)//.font(.semiboldCallout)
                        .font(Font.callout.weight(.medium))
                    Spacer()
                }
                Spacer()
                HStack(spacing: 20){
                    HStack(spacing: 2){
                        Image.locationFill
                        ForEach(item.studyLocation, id: \.self) { item in
                            Text(item)
                        }
                    }
                    HStack(spacing: 2){
                        Image.clockFill
                        Text(item.duration.isInt()
                                ? "\(Int(item.duration))a":
                                "\(item.duration, specifier: "%.1f")a")
                    }
                    HStack(spacing: 2){
                        Image.graduationFill
                        Text(item.level.rawValue.capitalizingFirstLetter())
                    }
                }.font(.regularCaption)
                .padding(.bottom, 2)
            }
        }
        .frame(height: 50, alignment: .leading)
        .padding(.horizontal, 10)
        .padding(.bottom, 5)
        .padding(.top, 10)
        .foregroundColor(.black)
        .background(Color.white)
        .cornerRadius(6)
        .padding(.horizontal)
        .padding(.top, 8)
        
    }
}
