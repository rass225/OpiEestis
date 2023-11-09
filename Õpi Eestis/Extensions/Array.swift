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
