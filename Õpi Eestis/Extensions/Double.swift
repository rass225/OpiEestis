import SwiftUI

extension Double {

    func isInt() -> Bool {
        guard Double(Int.min) <= self && self <= Double(Int.max) else {
            return false
        }

        return floor(self) == self
    }

    func toInt() -> Int? {
        guard Double(Int.min) <= self && self <= Double(Int.max) else {
            return nil
        }

        return Int(self)
    }
    
    func decimals(_ number: Int) -> String {
        String(self.formatted(.number.precision(.fractionLength(number))))
    }
    
    func formattedDecimals(_ number: Int) -> String {
        if self.truncatingRemainder(dividingBy: 1.0) == 0.0 {
            return "\(Int(self))"
        }
        
        return String(self.formatted(.number.precision(.fractionLength(number))))
    }
}
