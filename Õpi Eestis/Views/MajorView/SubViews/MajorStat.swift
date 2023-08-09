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
                topText = "\(Int(duration))a"
            } else {
                topText = String(format: "%.1f", duration) + "a"
            }
            bottomText = OEAppearance.Locale.duration
//            if duration > 1 {
//                bottomText = OEAppearance.Locale.years
//            } else {
//                bottomText = OEAppearance.Locale.year
//            }
        case .spots(let spots):
            image = .personFill
            topText = spots == 0 ? OEAppearance.Locale.infinity : "\(spots)"
            switch spots {
            case 1: bottomText = "Õppekohtade arv"
            default: bottomText = "Õppekohtade arv"
            }
        case .cost(let cost):
            image = cost.currency.icon
            topText = "\(cost.amount)€ \(cost.interval.label)"
            bottomText = "Maksumus"
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
        HStack(alignment: .center, spacing: 16) {
            image
                .foregroundStyle(color.gradient)
                .font(.body)
//                .frame(width: 16, alignment: .leading)
            Text(topText)
                .setFont(.subheadline, .medium, .rounded)
                .foregroundColor(.black)
        }
        .badge(Text(bottomText).setFont(.footnote, .regular, .rounded))
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
