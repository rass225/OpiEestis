import Foundation
import SwiftUI

class NetworkManager: ObservableObject {
    
    @ObservedObject var universities = Universities()
    private let indexes = [0,1,2,3,4,5,6,7,8,9,10,11,12,13]
}
