import SwiftUI
import FirebaseAuth
import FirebaseFirestore
import FirebaseStorage

class AppState: ObservableObject {
    @Published var collegeNavigation: NavigationPath
    @Published var testsNavigation: NavigationPath
    @Published var favoritesNavigation: NavigationPath
    @Published var profileNavigation: NavigationPath
    
    @Published private(set) var authState: AuthState
    @Published private(set) var appInformation: AppInformation
    
    @Published private(set) var user: FirebaseUser?
    @Published var pendingUser: PendingUser?
    
    let environment: AppEnvironment = .remote
    private var selectedIndex: Tabs
    private let dependencies: DependencyManager = .shared
    private var userListener: ListenerRegistration?
    
    init(
        collegeNavigation: NavigationPath = .init(),
        testsNavigation: NavigationPath = .init(),
        favoritesNavigation: NavigationPath = .init(),
        profileNavigation: NavigationPath = .init(),
        selectedIndex: Tabs = .colleges,
        authState: AuthState = .unauthenticated
    ) {
        self.collegeNavigation = collegeNavigation
        self.testsNavigation = testsNavigation
        self.favoritesNavigation = favoritesNavigation
        self.profileNavigation = profileNavigation
        self.selectedIndex = selectedIndex
        self.authState = authState
        self.appInformation = .initial
        start()
    }
    
    deinit {
        userListener?.remove()
    }
    
    var tabSelection: Binding<Tabs> { Binding(
        get: {
            self.selectedIndex
        },
        set: {
            if $0 == self.selectedIndex {
                print("Pop to root view for \($0)!")
                switch $0 {
                case .tests:
                    self.testsNavigation = .init()
                case .colleges:
                    if !self.collegeNavigation.isEmpty {
                        self.collegeNavigation = .init()
                    }
                case .favorites:
                    if !self.favoritesNavigation.isEmpty {
                        self.favoritesNavigation = .init()
                    }
                case .profile:
                    if !self.profileNavigation.isEmpty {
                        self.profileNavigation = .init()
                    }
                }
            }
            self.selectedIndex = $0
        }
    )}
    
    
}

private extension AppState {
    func start() {
        monitorAuthState()
        Task {
            await fetchAppInformation()
        }
    }
    
    func monitorAuthState() {
        dependencies.network.streamAuthState { user in
            guard let user else {
                self.handleUnauthenticated()
                return
            }
            
            Task {
                if let firebaseUser = try await self.checkIfUserInDatabase(id: user.uid) {
                    DispatchQueue.main.async {
                        self.handleAuthenticated(user: firebaseUser)
                    }
                } else {
                    DispatchQueue.main.async {
                        self.handlePartiallyAuthenticated(id: user.uid, email: user.email)
                    }
                }
            }
        }
    }
    
    func handleAuthenticated(user: FirebaseUser) {
        print("User with UID \(user.id) and email \(user.email) is logged in!")
        assignUser(user)
        setAuthState(to: .authenticated(user: user))
        streamUser(for: user.id)
        pendingUser = nil
    }
    
    func handlePartiallyAuthenticated(id: String, email: String?) {
        print("User with UID \(id) has signed in but has no account yet!")
        pendingUser = .init(id: id, email: email)
    }
    
    func handleUnauthenticated() {
        print("User is not logged in.")
        self.invalidateUser()
        self.userListener?.remove()
        self.setAuthState(to: .unauthenticated)
    }
    
    func checkIfUserInDatabase(id: String) async throws -> FirebaseUser? {
        try await self.dependencies.network.fetchUser(userId: id)
    }
    
    func assignUser(_ user: FirebaseUser) {
        self.user = user
    }
    
    func invalidateUser() {
        self.user = nil
    }
    
    func setAuthState(to newState: AuthState) {
        self.authState = newState
    }
}

extension AppState {
    func setupNewUser(
        id: String,
        firstName: String,
        lastName: String,
        email: String,
        nationality: Nationality,
        photo: UIImage?
    ) {
        print("Setting up account")
        Task {
            if let photo {
                let photoUrl = try await uploadImageAsync(photo)
                let user: FirebaseUser = .init(
                    id: id,
                    firstName: firstName,
                    lastName: lastName,
                    email: email,
                    photoUrl: photoUrl.absoluteString,
                    nationality: nationality,
                    dateJoined: Date.now.dateAndTimeString
                )
                try await self.dependencies.network.createUser(user: user)
                
                DispatchQueue.main.async {
                    self.handleAuthenticated(user: user)
                }
            } else {
                let user: FirebaseUser = .init(
                    id: id,
                    firstName: firstName,
                    lastName: lastName,
                    email: email,
                    photoUrl: nil,
                    nationality: nationality,
                    dateJoined: Date.now.dateAndTimeString
                )
                try await self.dependencies.network.createUser(user: user)
                
                DispatchQueue.main.async {
                    self.handleAuthenticated(user: user)
                }
            }
        }
    }
}

// MARK: - Navigation methods

extension AppState {
    func route(to destination: CollegeDestination) {
        switch selectedIndex {
        case .colleges:
            collegeNavigation.append(destination)
        case .tests:
            testsNavigation.append(destination)
        case .favorites:
            favoritesNavigation.append(destination)
        case .profile:
            profileNavigation.append(destination)
        }
    }
    
    func route(to destination: CollegeDestination, in tab: Tabs) {
        selectedIndex = tab
        switch tab {
        case .colleges:
            collegeNavigation.append(destination)
        case .tests:
            testsNavigation.append(destination)
        case .favorites:
            favoritesNavigation.append(destination)
        case .profile:
            profileNavigation.append(destination)
        }
    }
    
    @ViewBuilder
    func navigationDestination(_ destination: CollegeDestination) -> some View {
        switch destination {
        case let .college(college):
            CollegeView(model: .init(college: college))
        case let .majors(college, majors):
            MajorsView(model: .init(college: college, majors: majors, user: self.user, appState: self))
        case let .major(college, major, isFavorite):
            CollegeMajorView(model: .init(major: major, college: college, isFavorite: isFavorite))
        case let .majorRemote(college, major, isFavorite):
            MajorView(model: .init(major: major, college: college, user: self.user, isFavorite: isFavorite, appState: self))
        case let .collegeMap(college):
            CollegeMapView(model: .init(college: college, region: .init()))
        case let .collegeDevelopment(college):
            CollegeDevelopment(model: .init(college: college))
        case .about:
            AboutView()
        case .settings:
            SettingsView()
        case let .myAccount(user):
            MyAccountView(model: .init(user: user))
        case let .outcomes(college, outcomes):
            OutcomesView(college: college, outcomes: outcomes)
        case let .pathFinderHistory(colleges):
            PathFinderHistoryView(model: .init(colleges: colleges))
        case let .pathfinder(colleges):
            PathFinderView(model: .init(colleges: colleges))
        case .personalityTests:
            PersonalityTestView()
        }
    }
}

// MARK: - Network methods

private extension AppState {
    func streamUser(for userId: String) {
        userListener?.remove() // Remove any existing listener
        
        userListener = dependencies.network.streamUser(userId: userId) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let user):
                DispatchQueue.main.async {
                    self.user = user
                    self.authState = .authenticated(user: user)
                    print("User updated")
                }
            case .failure(let error):
                print("Error listening for user updates: \(error)")
            }
        }
    }
    
    func fetchAppInformation() async {
        do {
            let appInformation = try await dependencies.network.fetchAppInformation()
            DispatchQueue.main.async {
                self.appInformation = appInformation
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func uploadImageAsync(_ image: UIImage) async throws -> URL {
        guard let data = image.jpegData(compressionQuality: 0.8) else {
            throw NSError(domain: "S", code: 0)
        }
        
        let storage = Storage.storage()
        let storageRef = storage.reference()
        let photoRef = storageRef.child("photos/\(UUID().uuidString).jpg")
        
        return try await withCheckedThrowingContinuation { continuation in
            photoRef.putData(data, metadata: nil) { _, error in
                if let error = error {
                    continuation.resume(throwing: error)
                    return
                }
                
                photoRef.downloadURL { url, error in
                    if let error = error {
                        continuation.resume(throwing: error)
                    } else if let downloadUrl = url {
                        continuation.resume(returning: downloadUrl)
                    } else {
                        continuation.resume(throwing: NSError(domain: "X", code: 0))
                    }
                }
            }
        }
    }
}

// MARK: - Signing methods

extension AppState {
    func signout() {
        do {
            try AuthenticationManager.shared.signOut()
            authState = .unauthenticated
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func signInApple(completion: ((Result<Void, Error>) -> Void)? = nil) {
        Task {
            do {
                let helper = await SignInWithAppleHelper()
                let tokens = try await helper.startSignInWithApple()
                try await AuthenticationManager.shared.signInWithApple(tokens: tokens)
                completion?(.success(()))
            } catch {
                print(error)
                completion?(.failure(error))
            }
        }
    }
}

// MARK: - Objects

extension AppState {
    enum AppEnvironment {
        case edit
        case local
        case remote
    }
    
    enum AuthState {
        case authenticated(user: FirebaseUser)
        case unauthenticated
    }
    
    struct PendingUser: Identifiable {
        let id: String
        let email: String?
    }
}

enum CollegeDestination: Hashable {
    case college(College)
    case majors(college: College, majors: [NewMajor])
    case major(college: College, major: Major, isFavorite: Bool)
    case majorRemote(college: College, major: NewMajor, isFavorite: Bool)
    case collegeMap(College)
    case collegeDevelopment(College)
    case about
    case settings
    case myAccount(FirebaseUser)
    case outcomes(college: College, [NewOutcome])
    case pathFinderHistory(colleges: [College])
    case pathfinder(colleges: [College])
    case personalityTests
}

enum Tabs {
    case colleges
    case tests
    case favorites
    case profile
}
