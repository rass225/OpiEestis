import SwiftUI

struct MajorCell: View {
    
    let item: majorsMinors
    let school: School
    let isFavorite: Bool
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(item.name)
                .font(.mediumCallout)
                .frame(alignment: .leading)
                .multilineTextAlignment(.leading)
                .foregroundColor(.black)
            Text(item.level.rawValue.capitalizingFirstLetter())
                .font(.mediumSubHeadline)
                .foregroundColor(school.color)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.vertical, 8)
        .badge(badge())
    }
    
    func getDuration() -> String {
        if item.duration.isInt() {
            return "\(Int(item.duration))"
        } else {
            let formatted = String(format: "%.1f", item.duration)
            return formatted
        }
    }
    
    func badge() -> Text? {
        if isFavorite {
            return Text(Image(systemName: "heart.fill"))
                .foregroundColor(school.color)
        } else {
            return nil
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
