import SwiftUI

struct MajorCell: View {
    
    let item: majorsMinors
    let school: School
    let isFavorite: Bool
    var body: some View {
        VStack(alignment: .leading, spacing: 2){
            HStack(alignment: .top){
                Text(item.name)
                    .font(.mediumBody)
                    .frame(alignment: .leading)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 15)
                Spacer()
                if isFavorite {
                    Image.starFill
                        .resizable()
                        .frame(width: 16, height: 16)
                        .foregroundColor(school.color)
                        .padding(.top, 8)
                        .padding(.trailing, 8)
                }
            }
            Text(item.level.rawValue.capitalizingFirstLetter())
                .font(.mediumSubHeadline)
                .foregroundColor(school.color)
        }.frame(maxWidth: .infinity, alignment: .leading)
        
        .padding(.bottom, 20)
        .padding(.leading, 16)
        .foregroundColor(.black)
        .background(Color.white)
        .cornerRadius(12)
        .padding(.horizontal)
        .padding(.top, 8)
    }
    
    func getDuration() -> String {
        if item.duration.isInt() {
            return "\(Int(item.duration))"
        } else {
            let formatted = String(format: "%.1f", item.duration)
            return formatted
        }
    }
}

private struct majorCellStats: View {
    let image: Image
    let text: String
    var body : some View {
        HStack(spacing: 2){
            image
                .font(.regularBody)
            Text(text)
                .foregroundColor(.halfBlack)
        }.font(.regularCaption)
    }
}

private struct majorCellStatArray: View {
    let image: Image
    let text: [city]
    var body : some View {
        HStack(spacing: 2){
            image.font(.regularBody)
            ForEach(text.indices, id: \.self) { item in
                if text.count > 1 {
                    if item == text.count - 1 {
                        Text(text[item].rawValue)
                    } else {
                        Text("\(text[item].rawValue),")
                    }
                } else {
                    Text(text[item].rawValue)
                }
            }.foregroundColor(.halfBlack)
        }.font(.regularCaption)
        .padding(.bottom, 2)
    }
}
