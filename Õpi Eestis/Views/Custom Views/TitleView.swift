import SwiftUI

struct TitleView: View {
    let label: String
    
    init(_ label: String) {
        self.label = label
    }
    var body: some View {
        Text(label)
            .setFont(.title3, .semibold, .rounded)
    }
}
