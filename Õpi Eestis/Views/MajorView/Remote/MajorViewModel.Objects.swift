import SwiftUI

// MARK: - Objects

extension MajorView.Model {
    enum Tabs: CaseIterable {
        case overview
        case requirements
        case modules
        case outcomes
        case reviews
        
        var image: Image {
            switch self {
            case .overview: return Theme.Icons.doc
            case .requirements: return Theme.Icons.requirements
            case .modules: return Theme.Icons.stack
            case .outcomes: return Theme.Icons.outcomes
            case .reviews: return Theme.Icons.star
            }
        }
    }
    
    enum ViewState {
        case loading
        case success
    }
}
