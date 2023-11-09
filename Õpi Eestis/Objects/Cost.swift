import SwiftUI

struct Cost: Hashable, Codable {
    var amount: Int
    var currency: Currency
    var interval: interval
    
    var priceLabel: String {
        amount == 0 ? Theme.Locale.Favorites.free : Theme.Locale.Favorites.paid
    }
}
