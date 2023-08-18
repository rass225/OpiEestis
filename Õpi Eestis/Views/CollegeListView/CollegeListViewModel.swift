import SwiftUI

extension CollegesListView {
    class Model: ObservableObject {
        let schools: [College]
        
        init(schools: [College]) {
            self.schools = schools
        }
    }
}
