import SwiftUI

import FirebaseAuth

extension SignInView {
    @MainActor
    class Model: NSObject, ObservableObject {
        
        func signInApple() async throws {
            let helper = SignInWithAppleHelper()
            let tokens = try await helper.startSignInWithApple()
            let user = try await AuthenticationManager.shared.signInWithApple(tokens: tokens)
        }
    }
}
