import SwiftUI

public extension String {
    static let mappinEclipse = "mappin.and.ellipse"
    static let person3 = "person.3"
    static let person2 = "person.2"
    static let person2Fill = "person.2.fill"
    static let mappinCircle = "mappin.circle"
    static let listDash = "list.dash"
    static let chartBar = "chart.bar"
    static let envelope = "envelope"
    static let phone = "phone"
    static let map = "map"
    static let house = "house"
    static let book = "book"
    static let globe = "globe"
    static let location = "location"
    static let locationFill = "location.fill"
    static let euro = "eurosign.circle"
    static let euroFill = "eurosign.circle.fill"
    static let squareStack = "square.stack.3d.up.fill"
    static let clock = "clock"
    static let clockFill = "clock.fill"
    static let squareGrid = "square.grid.3x2"
    static let thermometer = "thermometer"
    static let doc = "doc.text"
    static let requirements = "person.crop.circle.badge.checkmark"
    static let outcomes = "briefcase"
    static let link = "link"
    
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
    
}
