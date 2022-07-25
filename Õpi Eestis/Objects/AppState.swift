import Foundation
import SwiftUI

final class AppState : ObservableObject {
    @Published var rootViewId = UUID()
    
    @Published var currentSchool: School = emptySchool
    
    
    var color: Color {
        return currentSchool.color
    }
}
