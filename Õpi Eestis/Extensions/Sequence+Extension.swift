import Foundation

extension Sequence {
    func sorted<T: Comparable>(by keyPath: KeyPath<Element, T>, descending: Bool = false) -> [Element] {
        return sorted { a, b in
            let comparisonResult = a[keyPath: keyPath] < b[keyPath: keyPath]
            return descending ? !comparisonResult : comparisonResult
        }
    }
}
