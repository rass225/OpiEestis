import SwiftUI

struct TitleView: View {
    let label: LocalizedStringKey
    
    init(_ label: LocalizedStringKey) {
        self.label = label
    }
    var body: some View {
        Text(label)
            .setFont(.title3, .semibold, .rounded)
    }
}
