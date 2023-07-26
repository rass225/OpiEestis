import SwiftUI

struct MajorStat: View {
    
    let image: Image
    let topText: String
    let bottomText: String
    let color: Color
    
    init(type: StatType, color: Color) {
        self.color = color
        switch type {
        case .duration(let duration):
            image = .clockFill
            if duration.isInt() {
                topText = "\(Int(duration))"
            } else {
                topText = String(format: "%.1f", duration)
            }
            if duration > 1 {
                bottomText = OEAppearance.Locale.years
            } else {
                bottomText = OEAppearance.Locale.year
            }
        case .spots(let spots):
            image = .person2Fill
            topText = spots == 0 ? OEAppearance.Locale.infinity : "\(spots)"
            switch spots {
            case 1: bottomText = "Õppekoht"
            default: bottomText = OEAppearance.Locale.spots
            }
        case .cost(let cost):
            image = cost.currency.icon
            topText = "\(cost.amount)"
            bottomText = cost.interval.label
        case .eap(let eap, let hasEap):
            image = .squareStack
            topText = "\(eap)"
            bottomText = hasEap ? OEAppearance.Locale.eap : OEAppearance.Locale.ekap
        case .language(let language):
            image = .globe
            topText = language.country
            bottomText = OEAppearance.Locale.language
        }
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 16){
            VStack(alignment: .center){
                image
                    .foregroundColor(color)
                    .font(.body)
                    .frame(width: 22)
            }.frame(width: 20)
            HStack(alignment: .center, spacing: 3){
                Text(topText)
                    .font(.mediumBody)
                    .foregroundColor(.black)
                Text(bottomText)
                    .foregroundColor(.darkGray)
                    .font(.regularCaption)
            }
        }
    }
}

extension MajorStat {
    enum StatType {
        case duration(duration: Double)
        case spots(spots: Int)
        case cost(cost: Cost)
        case eap(count: Int, hasEAP: Bool)
        case language(lang: languagechoice)
    }
}
