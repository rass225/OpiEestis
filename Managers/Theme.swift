import SwiftUI

struct Theme {
    enum Colors {
        static let primary: Color = .init(red: 0, green: 115/255, blue: 207/255)
        static let systemGray: Color = .init(red: 242/255, green: 242/255, blue: 247/255)
        static let black: Color = .init(red: 0.1, green: 0.1, blue: 0.1)
        static let white: Color = Color.white
        static let gray: Color = .gray
    }
    
    enum Icons {
        static let chevronRight = Image(systemName: "chevron.right")
        static let chevronLeft = Image(systemName: "chevron.left")
        static let docs = Image(systemName:"doc.on.doc.fill")
        static let doc = Image(systemName: "doc.text.fill")
        static let appLogo = Image("Õpi Eestis logo")
        static let appLogo2 = Image("estonia2")
        static let person = Image(systemName: "person.fill")
        static let person2 = Image(systemName: "person.2.fill")
        static let mappinCircle = Image(systemName: "mappin.circle.fill")
        static let envelope = Image(systemName: "envelope.fill")
        static let phone = Image(systemName: "phone.fill")
        static let house = Image(systemName: "house.fill")
        static let globe = Image(systemName: "globe")
        static let location = Image(systemName: "location.fill")
        static let euro = Image(systemName: "eurosign.circle.fill")
        static let dollar = Image(systemName: "dollarsign.circle.fill")
        static let squareStack = Image(systemName: "square.stack.3d.up.fill")
        static let clock = Image(systemName: "clock.fill")
        static let requirements = Image(systemName: "person.crop.circle.fill.badge.checkmark")
        static let outcomes = Image(systemName: "briefcase.fill")
        static let graduation = Image(systemName: "graduationcap.fill")
        static let link = Image(systemName: "link")
        static let stack = Image(systemName: "square.3.stack.3d.top.fill")
        static let textBook = Image(systemName: "text.book.closed.fill")
        static let slider: Image = .init(systemName: "slider.horizontal.3")
        static let heart: Image = .init(systemName: "heart.fill")
    }
}
