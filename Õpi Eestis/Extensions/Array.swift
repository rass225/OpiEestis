extension Array where Element : Hashable {
    var unique: [Element] {
        return Array(Set(self))
    }
}

extension Array where Element == NewMajor {
    func countByLevel() -> LevelCounts {
        var counts = LevelCounts()
        
        for major in self {
            switch major.level {
            case .vocational:
                counts.vocational += 1
            case .applied:
                counts.applied += 1
            case .bachelor:
                counts.bachelor += 1
            case .integrated:
                counts.integrated += 1
            case .masters:
                counts.masters += 1
            case .doctor:
                counts.doctor += 1
            case .all:
                break
            }
        }
        
        return counts
    }
}

extension Array where Element == Requirements {
    func customSorted() -> [Requirements] {
        return self.sorted { (first, second) -> Bool in
            switch (first.orderNr, second.orderNr) {
            case let (orderNr1?, orderNr2?):
                // If both have orderNr, sort by orderNr
                return orderNr1 < orderNr2
            case (nil, _):
                // If first doesn't have orderNr, it comes after second
                return false
            case (_, nil):
                // If second doesn't have orderNr, first comes before second
                return true
            }
        }
    }
}

extension Array where Element == NewMajor {
    func customSorted(by locale: AppLocale) -> [NewMajor] {
        return self.sorted { (first, second) -> Bool in
            switch locale {
            case .estonian:
                return first.name < second.name
            case .english:
                let firstName = first.nameEn ?? first.name
                let secondName = second.nameEn ?? second.name
                return firstName < secondName
            }
        }
    }
}
