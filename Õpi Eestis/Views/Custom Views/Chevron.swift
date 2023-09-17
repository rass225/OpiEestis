import SwiftUI

struct Chevron: View {
    
    enum ActionType {
        case normal
        case link
    }
    
    let isLink: Bool
    
    init(type: ActionType) {
        switch type {
        case .normal:
            isLink = false
        case .link:
            isLink = true
        }
    }
    var body: some View {
        HStack(spacing: 0) {
            if isLink {
                Theme.Icons.link
                    .setColor(.gray)
                    .setFont(.caption, .bold, .rounded)
            }
            Theme.Icons.chevronRight
                .setColor(.gray)
                .setFont(.footnote, .semibold, .rounded)
        }
    }
}
