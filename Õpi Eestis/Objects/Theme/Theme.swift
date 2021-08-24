import Foundation
import SwiftUI

class Theme: ObservableObject {
    @Published var colorTheme: Color = .oeBlue
    @Published var levelColors: LevelColors = LevelColors(
        bachelor: .white,
        master: .white,
        doctor: .white,
        applied: .white,
        kutse: .white
    )
}




