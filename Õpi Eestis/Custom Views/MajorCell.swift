import SwiftUI

struct MajorCell: View {
    @State var item: majorsMinors
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
        .foregroundColor(.black)
    }
}
