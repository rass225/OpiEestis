import SwiftUI
import FirebaseAuth
import FirebaseFirestore

class AppState: ObservableObject {
    @Published var collegeNavigation: NavigationPath
    @Published var mapNavigation: NavigationPath
    @Published var favoritesNavigation: NavigationPath
    @Published var profileNavigation: NavigationPath
    @Published private(set) var selectedIndex: Tabs
    @Published private(set) var authState: AuthState
    
    let environment: AppEnvironment = .remote
    @Published private(set) var user: FirebaseUser?
    private let dependencies: DependencyManager = .shared
    private var userListener: ListenerRegistration?
    
    init(
        collegeNavigation: NavigationPath = .init(),
        mapNavigation: NavigationPath = .init(),
        favoritesNavigation: NavigationPath = .init(),
        profileNavigation: NavigationPath = .init(),
        selectedIndex: Tabs = .colleges,
        authState: AuthState = .unauthenticated
    ) {
        self.collegeNavigation = collegeNavigation
        self.mapNavigation = mapNavigation
        self.favoritesNavigation = favoritesNavigation
        self.profileNavigation = profileNavigation
        self.selectedIndex = selectedIndex
        self.authState = authState
        
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
                case .map:
                    self.mapNavigation = .init()
                case .colleges:
                    self.collegeNavigation = .init()
                case .favorites:
                    self.favoritesNavigation = .init()
                case .profile:
                    self.profileNavigation = .init()
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
        }
    }
    
    func signInApple() {
        Task {
            do {
                let helper = await SignInWithAppleHelper()
                let tokens = try await helper.startSignInWithApple()
                try await AuthenticationManager.shared.signInWithApple(tokens: tokens)
            } catch {
                print(error)
            }
        }
    }
    
    func signout() {
        do {
            try AuthenticationManager.shared.signOut()
            authState = .unauthenticated
        } catch {
            print(error.localizedDescription)
        }
    }
}

private extension AppState {
    func start() {
        monitorAuthState()
    }
    
    func monitorAuthState() {
        dependencies.network.streamAuthState { [weak self] user in
            guard let self else { return }
            if let user = user {
                print("User with UID \(user.uid) is logged in.")
                Task {
                    if let firebaseUser = try await self.checkIfUserInDatabase(id: user.uid) {
                        DispatchQueue.main.async {
                            self.assignUser(firebaseUser)
                            self.setAuthState(to: .authenticated(user: firebaseUser))
                            self.startListeningToUserDocument(for: firebaseUser.id)
                        }
                    } else {
                        let newUser = try await self.addUserToDatabase(user: user)
                        DispatchQueue.main.async {
                            self.assignUser(newUser)
                            self.setAuthState(to: .authenticated(user: newUser))
                            self.userListener?.remove()
                        }
                    }
                }
            } else {
                print("User is not logged in.")
                self.invalidateUser()
                self.setAuthState(to: .unauthenticated)
            }
        }
    }
    
    func checkIfUserInDatabase(id: String) async throws -> FirebaseUser? {
        try await self.dependencies.network.fetchUser(userId: id)
    }
    
    func addUserToDatabase(user: User) async throws -> FirebaseUser {
        let newUser = FirebaseUser.initial(id: user.uid, email: user.email)
        try await self.dependencies.network.createUser(user: newUser)
        return newUser
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
    
    func startListeningToUserDocument(for userId: String) {
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
}

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
}

enum Tabs {
    case colleges
    case map
    case favorites
    case profile
}
