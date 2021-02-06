import SwiftUI
class SizeObject: ObservableObject {
    let height = UIScreen.main.bounds.height
    let width = UIScreen.main.bounds.width
    let thirdWidth = UIScreen.main.bounds.width / 3
    let halfWidth = UIScreen.main.bounds.width / 2
    let halfHeight = UIScreen.main.bounds.height / 2
    let thirdHeight = UIScreen.main.bounds.height / 3
}
