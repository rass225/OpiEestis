import SwiftUI

class PathManager: ObservableObject {
    @Published var path: NavigationPath
    
    init(path: NavigationPath = NavigationPath()) {
        self.path = path
        
    }
    
    func isEmpty() -> Bool {
        path.isEmpty
    }
    
    func reset(){
        self.path = NavigationPath()
    }
}

