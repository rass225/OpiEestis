import Foundation
import FirebaseAuth
import FirebaseFirestore

final class AuthenticationManager {
    static let shared = AuthenticationManager()
    private let dependencies: DependencyManager = .shared
    private init() { }
    
    func signOut() throws {
        try Auth.auth().signOut()
    }
    
    private var db: Firestore {
        return Firestore.firestore()
    }
}

extension AuthenticationManager {
    func signInWithApple(tokens: SignInWithAppleResult) async throws {
        let credentials = OAuthProvider.credential(
            withProviderID: AuthProviderOption.apple.rawValue,
            idToken: tokens.token,
            rawNonce: tokens.nonce
        )
        let firebaseAuthDataResult = try await Auth.auth().signIn(with: credentials)
        let firebaseUser = firebaseAuthDataResult.user
    }
    
    func signIn(credentials: AuthCredential) async throws -> AuthDataResultModel {
        let authDataResult = try await Auth.auth().signIn(with: credentials)
        return AuthDataResultModel(user: authDataResult.user)
    }

    func objectToDictionary<T: Encodable>(_ object: T) -> [String: Any]? {
        let encoder = JSONEncoder()
        guard let data = try? encoder.encode(object) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)) as? [String: Any]
    }
}

struct AuthDataResultModel {
    let uid: String
    let email: String?
    let photoUrl: String?
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
        self.photoUrl = user.photoURL?.absoluteString
    }
}

enum AuthProviderOption: String {
    case email = "password"
    case google = "google.com"
    case apple = "apple.com"
}
