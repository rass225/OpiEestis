import Foundation

extension Optional {
    func unwrap(_ block: (Wrapped) -> Void) {
        switch self {
        case .some(let value):
            block(value)
        case .none:
            return
        }
    }
}
