import SwiftUI

struct MenuItem: View {
    
    let image: String
    let action: () -> Void
    let contextAction: () -> Void
    
    var body: some View {
        Button(action: action) {
            ContactButton(image: image)
        }.contextMenu(menuItems: {
            Button(action:  contextAction ) {
                Text.copy
            }
        })
    }
}
