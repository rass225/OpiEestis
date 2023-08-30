import SwiftUI

extension Text {
    func setFont(_ font: Font, _ fontWeight: Font.Weight, _ fontDesign: Font.Design) -> Text {
        return self
            .font(font)
            .fontWeight(fontWeight)
            .fontDesign(fontDesign)
    }
}
