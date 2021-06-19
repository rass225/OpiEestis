import Foundation
import Combine
import SwiftUI

class ContentViewPresenter: ObservableObject {
    
    let size = SizeObject()
    
    func navigateToAbout() -> AnyView {
        return AnyView(AboutView())
    }
    
    func navigateToSchoolList() -> AnyView {
        return AnyView(SchoolListView())
    }
}
