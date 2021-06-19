import Foundation
import SwiftUI

class NetworkManager: ObservableObject {
    
    @ObservedObject var universities = Universities()
    private let indexes = [0,1,2,3,4,5,6,7,8,9,10,11,12,13]
    
    
    
//    func loadData(id: Int) {
//        var school: School?
//        var ref: DatabaseReference!
//        ref = Database.database().reference()
//        ref.child("\(id)").getData { (error, snapshot) in
//            if let error = error {
//                print("Error getting data \(error)")
//                return
//            }
//            else if snapshot.exists() {
//                guard let value = snapshot.value as? [String: Any] else { return }
//                do {
//                    let jsonData = try JSONSerialization.data(withJSONObject: value, options: [])
//                    let parsedJSON = try JSONDecoder().decode(School.self, from: jsonData)
//                    school = parsedJSON
//                } catch let error {
//                    print(error)
//                    return
//                }
//            }
//            else {
//                print("No data available")
//                return
//            }
//        }
//    }
}
