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
                Image.link
                    .foregroundColor(.systemGray)
                    .font(.caption)
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
            }
            Image.chevronRight
                .foregroundColor(.systemGray)
                .font(.footnote)
                .fontWeight(.semibold)
                .fontDesign(.rounded)
        }
    }
}
