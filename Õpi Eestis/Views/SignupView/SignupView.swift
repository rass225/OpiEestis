import SwiftUI
import AuthenticationServices

struct SignInView: View {
    @StateObject var model: Model = .init()
    @State var showSignedInView: Bool = false
    var body: some View {
        if showSignedInView {
            Button(action: {
                Task {
                    do {
                        try AuthenticationManager.shared.signOut()
                        showSignedInView = false
                    } catch {
                        print(error)
                    }
                }
                
            }, label: {
                Text("Log out")
            })
        } else {
            Button(action: {
                Task {
                    do {
                        try await model.signInApple()
                        showSignedInView = true
                    } catch {
                        print(error)
                    }
                }
            }, label: {
                SignInWithAppleButtonViewRepresentable(type: .default, style: .black)
                    .allowsHitTesting(false)
            })
            .padding(.horizontal, 32)
            .frame(height: 55)
        }
        
    }
}
