import SwiftUI

struct Cost: Hashable, Codable {
    var amount: Int
    var currency: Currency
    var interval: interval
    
    var priceLabel: LocalizedStringKey {
        amount == 0 ? Theme.Locale.Majors.free : Theme.Locale.Majors.paid
    }
}
