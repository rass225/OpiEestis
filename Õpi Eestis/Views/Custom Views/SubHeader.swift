import SwiftUI

struct SubHeader: View {
    
    enum SubHeaderType {
        case description
        case modules(duration: Double)
        case acceptance
        case outcomes
        case personel
        case homepage
        case majors(count: Int)
        case location(address: String, city: city)
        case website
        case admission(range: String)
        case contact
    }
    
    let subheader: String
    
    init(type: SubHeaderType) {
        switch type {
        case .description:
            subheader = ""
        case .modules(let duration):
            let value: String
            if duration.isInt() {
                value = "\(Int(duration))"
            } else {
                let formatted = String(format: "%.1f", duration)
                value = formatted
            }
            subheader = "\(value) aastaga läbitakse need kursused"
        case .acceptance:
            subheader = "Ülikooli sisseastumiseks vaja minev"
        case .outcomes:
            subheader = "Eriala läbinu omandatud oskused"
        case .personel:
            subheader = "Juhid, õppejõud, lektorid"
        case .location(let address, let city):
            subheader = "\(address), \(city.rawValue)"
        case .homepage:
            subheader = "Tutvu lähemalt erialaga kooli kodulehel"
        case .majors(let count):
            subheader = "\(count) eriala"
        case .website:
            subheader = "Vaata lisa kooli kodulehelt"
        case .admission(let range):
            subheader = range
        case .contact:
            subheader = "Võta ühendust"
        }
    }
    
    var body: some View {
        Text(subheader)
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.regularCaption)
            .foregroundColor(.darkGray)
            .padding(.bottom)
    }
}
