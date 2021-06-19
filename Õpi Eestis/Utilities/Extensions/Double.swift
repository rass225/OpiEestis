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
}
