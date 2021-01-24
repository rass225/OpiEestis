import Foundation
import SwiftUI

struct MajorButtonModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            
            .frame(maxHeight: .infinity)
            .background(Color.black.opacity(0.3))
    }
}
