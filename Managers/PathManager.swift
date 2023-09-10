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


class AppState: ObservableObject {
//    @Published var tabSelection: Tabs = .colleges
    @Published var collegeNavigation: NavigationPath = .init()
    @Published var mapNavigation: NavigationPath = .init()
    @Published var favoritesNavigation: NavigationPath = .init()
    
    @Published private var selectedIndex: Tabs = .colleges
    
    var tabSelection: Binding<Tabs> { Binding(
        get: {
            self.selectedIndex
        },
        set: {
            if $0 == self.selectedIndex {
                print("Pop to root view for first tab!!")
                switch $0 {
                case .map:
                    self.mapNavigation = .init()
                case .colleges:
                    self.collegeNavigation = .init()
                case .favorites:
                    self.favoritesNavigation = .init()
                case .profile:
                    break
                }
                
            }
            self.selectedIndex = $0
        }
    )}
    
    func route(to destination: CollegeDestination) {
        switch selectedIndex {
        case .colleges:
            collegeNavigation.append(destination)
        case .map:
            mapNavigation.append(destination)
        case .favorites:
            favoritesNavigation.append(destination)
        case .profile:
            break
        }
    }
}

enum CollegeDestination: Hashable {
    case college(College)
    case majors(college: College, majors: [Major])
    case major(college: College, major: Major, isFavorite: Bool)
}

enum Tabs {
    case colleges
    case map
    case favorites
    case profile
}
