import SwiftUI
import Combine
import MapKit

extension MajorView {
    class Model: ObservableObject {
        @Published var requirements: [Requirements]
        @Published var personnel: [Personnel]
        @Published var outcomes: [NewOutcome]
        @Published var modules: [Module]
        @Published var reviews: [Review]
        @Published var tabSelection: Tabs
        @Published var isFavorite: Bool
        @Published var viewState: ViewState
        @Published var imageCache: [URL: UIImage]
        @Published var reviewProfileImagesCache: [URL: UIImage]
        @Published var standardMapSnapshot: UIImage
        @Published var isMapViewPresented: Bool
        @Published var selectedPersonnel: Personnel?
        @Published var isNewReviewViewPresented: Bool
        
        @Published var newReviewRating: Int = 0
        @Published var newReviewText = ""
        
        let college: College
        let major: NewMajor
        var user: FirebaseUser?
        
        private var cancellables = Set<AnyCancellable>()
        private let dependencies: DependencyManager
        private var favoriteMajor: Favorite?
        
        
        var availableTabs: [Tabs] {
            var tabs: [Tabs] = []
            tabs.append(.overview)
            if !requirements.isEmpty {
                tabs.append(.requirements)
            }
            if !outcomes.isEmpty {
                tabs.append(.outcomes)
            }
            if !modules.isEmpty {
                tabs.append(.modules)
            }
            tabs.append(.reviews)
            return tabs
        }
        
        var averageRating: Double {
            let totalCount = reviews.map(\.rating).reduce(0, +)
            let currentRating = Double(totalCount) / Double(reviews.count)
            return currentRating
        }
        
        init(
            major: NewMajor,
            college: College,
            user: FirebaseUser?,
            isFavorite: Bool,
            appState: AppState,
            tabSelection: Tabs = .overview,
            dependencies: DependencyManager = .shared,
            standardMapSnapshot: UIImage = UIImage()
        ) {
            print("✅ College Major View Model initialized")
            self.major = major
            self.requirements = []
            self.personnel = []
            self.outcomes = []
            self.modules = []
            self.reviews = []
            self.college = college
            self.tabSelection = tabSelection
            self.isFavorite = isFavorite
            self.viewState = .success
            self.dependencies = dependencies
            self.standardMapSnapshot = standardMapSnapshot
            self.isMapViewPresented = false
            self.user = user
            self.imageCache = [:]
            self.reviewProfileImagesCache = [:]
            self.isNewReviewViewPresented = false
            
            appState.$user
                .sink { [weak self] user in
                    guard let self else { return }
                    self.user = user
                }
                .store(in: &cancellables)
            
            start()
        }
        
        deinit {
            print("Major View Model deinitialized")
        }
    }
}

extension MajorView.Model {
    func openNewReviewView() {
        isNewReviewViewPresented.toggle()
    }
    
    func openWebsite() {
        dependencies.network.openLink(with: major.majorWebsite)
    }
    
    func openPhone(_ urlString: String) {
        dependencies.network.callNumber(with: urlString)
    }
    
    func openMail(_ urlString: String) {
        dependencies.network.openMail(with: urlString)
    }

    func addFavorite() {
        guard let user else { return }
        Task {
            try await dependencies.network.addFavorite(userId: user.id, major: major, college: college)
        }
    }
                                        
    func removeFavorite() {
        guard let user else { return }
        guard let favoriteMajor else { return }
        Task {
            do {
                try await dependencies.network.removeFavorite(userId: user.id, favoriteId: favoriteMajor.id)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func presentMapView() {
        isMapViewPresented.toggle()
    }
    
    func createCollegeMapViewModel() -> CollegeMapView.Model {
        var collegeWithFilteredLocations = college
        collegeWithFilteredLocations.branches = availableBranches()
        let coordinates = availableBranches().map(\.coordinates)
        let region = dependencies.mapService.getRegion(locations: coordinates, latitudeMultiplier: 1.6)
        return .init(college: collegeWithFilteredLocations, region: region)
    }
    
    func submitReview() {
        if let userReview = reviews.first(where: { $0.user == user }) {
            updateReview()
        } else {
            addReview()
        }
    }
    
    func updateReview() {
        guard var userReview = reviews.first(where: { $0.user == user }) else { return }
        let updatedReview: Review = .init(
            id: userReview.id,
            user: userReview.user,
            text: newReviewText,
            rating: newReviewRating,
            date: .now
        )
        Task {
            do {
                try await dependencies.network.updateReview(
                    collegeId: college.id,
                    majorId: major.id,
                    review: updatedReview
                )
                DispatchQueue.main.async {
                    self.isNewReviewViewPresented = false
                    self.newReviewText = ""
                    self.newReviewRating = 0
                }
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func addReview() {
        guard let user else { return }
        guard newReviewRating > 0 else { return }
        let text: String? = newReviewText.isEmpty ? nil : newReviewText
        let review: Review = .init(
            id: "placeholder",
            user: user,
            text: text,
            rating: newReviewRating,
            date: .now
        )
        Task {
            do {
                try await dependencies.network.addReview(
                    collegeId: college.id,
                    majorId: major.id,
                    review: review
                )
                DispatchQueue.main.async {
                    self.isNewReviewViewPresented = false
                    self.newReviewText = ""
                    self.newReviewRating = 0
                }
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func deleteReview(_ review: Review) {
        guard review.user == user else { return }
        Task {
            do {
                try await dependencies.network.removeMajorReview(
                    collegeId: college.id,
                    majorId: major.id,
                    reviewId: review.id)
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

// MARK: - Private Methods

private extension MajorView.Model {
    func start() {
        Task {
            await withTaskGroup(of: Void.self) { group in
                group.addTask { await self.fetchModules() }
                group.addTask { await self.fetchRequirements() }
                group.addTask { await self.fetchOutcomes() }
                group.addTask { await self.fetchPersonnel() }
                group.addTask { await self.fetchPersonnelImages() }
                group.addTask { self.loadMapSnapshot() }
                group.addTask { self.streamFavoriteMajor() }
                group.addTask { self.streamReviews() }
                for await _ in group { }
            }
        }
    }
    
    func availableBranches() -> [CollegeLocation] {
        college.branches
            .filter {
                major.studyLocation
                    .map(\.rawValue)
                    .contains($0.city)
            }
    }
    
    func loadMapSnapshot() {
        Task {
            let coordinates = availableBranches().map(\.coordinates)
            let region = dependencies.mapService.getRegion(locations: coordinates)
            let standardImage = await dependencies.mapService.mapSnapshot(
                with: availableBranches(),
                coordinateRegion: region,
                baseColor: college.palette.base,
                secondaryColor: college.palette.secondary
            )
            if let standardImage {
                DispatchQueue.main.async {
                    self.standardMapSnapshot = standardImage
                }
            }
        }
    }
}

// MARK: - Fetching

private extension MajorView.Model {
    func streamFavoriteMajor() {
        guard let user else { return }
        dependencies.network.streamUserFavoriteMajor(userId: user.id, majorId: major.id) { [weak self] result in
            switch result {
            case let .success(major):
                self?.isFavorite = true
                self?.favoriteMajor = major
            case let .failure(error):
                print(error.localizedDescription)
                self?.isFavorite = false
            }
        }
    }
    
    func fetchRequirements() async {
        do {
            let requirements = try await dependencies.network.fetchRequirements(schoolId: college.id, majorId: major.id)
            DispatchQueue.main.async {
                self.requirements = requirements
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func fetchPersonnel() async {
        do {
            let personnel = try await dependencies.network.fetchPersonnel(schoolId: college.id, majorId: major.id)
            DispatchQueue.main.async {
                self.personnel = personnel
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func fetchOutcomes() async {
        do {
            let outcomes = try await dependencies.network.fetchOutcomes(schoolId: college.id, majorId: major.id)
            DispatchQueue.main.async {
                self.outcomes = outcomes
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func fetchModules() async {
        do {
            let modules = try await dependencies.network.fetchModules(schoolId: college.id, majorId: major.id)
            DispatchQueue.main.async {
                self.modules = modules
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    func streamReviews() {
        dependencies.network.streamReviews(
            collegeId: college.id,
            majorId: major.id
        ) { [weak self] result in
            guard let self else { return }
            switch result {
            case let .success(reviews):
                DispatchQueue.main.async {
                    self.reviews = reviews.sorted(by: \.date, descending: true)
                }
                Task {
                    await self.fetchReviewImages(reviews: reviews)
                }
            case let .failure(error):
                print(error.localizedDescription)
            }
        }
    }
    
    func fetchReviewImages(reviews: [Review]) async {
        let urls = reviews
            .map(\.user)
            .compactMap(\.photoUrl)
            .compactMap { photoUrlString in
                return URL(string: photoUrlString)
            }
        let fetchedImages = await dependencies.network.fetchImages(urls: urls)
        let nonNilImages = fetchedImages.compactMapValues { $0 }
        DispatchQueue.main.async {
            self.reviewProfileImagesCache = nonNilImages
        }
    }
    
    func fetchPersonnelImages() async {
        let urls = personnel
            .compactMap(\.photo)
            .compactMap { photoUrlString in
                return URL(string: photoUrlString)
            }
        let fetchedImages = await dependencies.network.fetchImages(urls: urls)
        let nonNilImages = fetchedImages.compactMapValues { $0 }
        DispatchQueue.main.async {
            self.imageCache.merge(nonNilImages) { (_, new) in new }
        }
    }
}
