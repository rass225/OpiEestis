import SwiftUI

struct MajorStats: View {
    @EnvironmentObject var theme: Theme
    @State var major: majorsMinors
    @State var school: School
    @State var isExpanded = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            HStack(spacing: 0){
                MajorStatistic2(image: .clockFill, topText: makeDurationTop(), bottomText: makeDurationBottom())
                Spacer()
                MajorStatistic2(image: .personFill, topText: makeSpotsTop(), bottomText: makeSpotsBottom())
                Spacer()
                MajorStatistic2(image: makeCostImage(), topText: makeCostTop(), bottomText: makeCostBottom())
                
            }.padding(.top, 30)
            .padding(.bottom, isExpanded ? 30 : 25)
            VStack{
                if isExpanded {
                    HStack(spacing: 0){
                        Spacer()
                        MajorStatistic2(image: .squareStack, topText: makeEapTop(), bottomText: makeEapButtom())
                        Spacer()
                        MajorStatistic2(image: .globe, topText: makeLanguageTop(), bottomText: makeLanguageBottom())
                        Spacer()
                    }.padding(.bottom, 5)
                }
                Text(isExpanded ? Locale.expanded.isExpanded : Locale.expanded.notExpanded)
                    .foregroundColor(.gray)
                    .font(Font.caption2)
            }
        }.frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 20)
        .background(Color.white)
        .cornerRadius(15)
        .padding(.horizontal, 20)
        .padding(.bottom, 20)
        .onTapGesture { isExpanded.toggle() }
    }
    
    func makeSpotsBottom() -> String {
        return Locale.spots
    }
    
    
    func makeSpotsTop() -> String {
        let number = major.spots == 0 ? Locale.infinity : "\(major.spots)"
        
        return number
    }
    
    func makeDurationBottom() -> String {
        if major.duration > 1 {
            return Locale.years
        } else {
            return Locale.year
        }
       
    }
    
    func makeDurationTop() -> String {
        if major.duration.isInt() {
            return "\(Int(major.duration))"
        } else {
            let formatted = String(format: "%.1f", major.duration)
            return formatted
        }
    }
    
    func makeCostImage() -> Image {
        switch major.cost.currency {
        case .euro:
            return .euroFill
        case .dollar:
            return .dollarSign
        }
    }
    
    func makeCostTop() -> String {
        return "\(major.cost.amount)"
    }
    
    func makeCostBottom() -> String {
        switch major.cost.interval {
        case .eap:
            return Locale.eap
        case .full:
            return Locale.fullPayment
        case .semester:
            return Locale.semester
        case .year:
            return Locale.year
        }
    }
    
    func makeEapTop() -> String {
        let eap = major.eap != nil ? major.eap! : major.ekap!
        return "\(eap)"
    }
    
    func makeEapButtom() -> String {
        let label = major.eap != nil ? Locale.eap : Locale.ekap
        return label
    }
    
    func makeLanguageTop() -> String {
        switch major.language {
        case .eesti:
            return Locale.languages.estonian
        case .hispaania:
            return Locale.languages.spanish
        case .inglise:
            return Locale.languages.english
        case .prantsuse:
            return Locale.languages.french
        case .saksa:
            return Locale.languages.german
        case .vene:
            return Locale.languages.russian
        }
    }
    
    func makeLanguageBottom() -> String{
        return Locale.language
    }
}

private struct MajorStatistic2: View {
    let image: Image
    let topText: String
    let bottomText: String
    var body: some View {
        HStack(alignment: .center, spacing: 5){
            MajorStatImage(image: image)
            VStack(alignment: .leading, spacing: 0){
                Text(topText)
                    .font(.boldTitle)
                    .foregroundColor(.black)
                Text(bottomText)
                    .padding(.top, -3)
                    .foregroundColor(.halfBlack)
                    .font(.regularCaption)
            }
        }
    }
}
