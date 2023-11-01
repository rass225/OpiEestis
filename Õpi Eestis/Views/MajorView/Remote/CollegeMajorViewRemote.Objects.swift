import SwiftUI

// MARK: - Objects

extension CollegeMajorViewRemote.Model {
    enum Tabs: CaseIterable {
        case overview
        case requirements
        case modules
        case outcomes
        case personnel
        
        var image: Image {
            switch self {
            case .overview: return Theme.Icons.doc
            case .requirements: return Theme.Icons.requirements
            case .modules: return Theme.Icons.stack
            case .outcomes: return Theme.Icons.outcomes
            case .personnel: return Theme.Icons.person2
            }
        }
    }
    
    enum ViewState {
        case loading
        case success
    }
}
