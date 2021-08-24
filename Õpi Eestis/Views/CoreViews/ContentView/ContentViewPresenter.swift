import Foundation
import Combine
import SwiftUI

class ContentViewPresenter: ObservableObject {
    
    func navigateToAbout() -> AnyView {
        return AnyView(AboutView())
    }
    
    func navigateToSchoolList() -> AnyView {
        return AnyView(SchoolListView())
    }
}
