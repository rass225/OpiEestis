import Foundation
import SwiftUI

struct AppToolbarItem: ToolbarContent {

    let type: ButtonType
    let color: Color
    let placement: ToolbarItemPlacement
    
    init(_ type: ButtonType, color: Color) {
        self.type = type
        self.color = color
        
        switch type {
        case .dismiss: placement = .navigationBarLeading
        case .logo: placement = .principal
        case .favorites: placement = .navigationBarTrailing
        case .majorFavorites: placement = .navigationBarTrailing
        case .sort: placement = .navigationBarTrailing
        case .search: placement = .navigationBarTrailing
        case .toAbout: placement = .principal
        case .title: placement = .principal
        case .map: placement = .principal
        case .none: placement = .navigationBarLeading
        case .conditionalDismiss: placement = .navigationBarLeading
        }
    }
    
    var body: some ToolbarContent {
        ToolbarItem(placement: placement) {
            OEToolBar(type: type, color: color)
        }
    }
}
