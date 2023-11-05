import UIKit
import FirebaseAuth
import FirebaseFirestore

struct NetworkManager {
    private let firebase: FirebaseManager
    
    init(
        firebase: FirebaseManager = .init()
    ) {
        self.firebase = firebase
    }
}

extension NetworkManager {
    func updateUserData(data: [String: String], userId: String) async throws {
        try await firebase.updateUserData(data: data, userId: userId)
    }
    func updateUser(user: FirebaseUser) async throws {
        try await firebase.updateUser(user: user)
    }
    
    func createUser(user: FirebaseUser) async throws {
        try await firebase.createUser(user: user)
    }
    
    func fetchUser(userId: String) async throws -> FirebaseUser? {
        try await firebase.fetchUser(userId: userId)
    }
    
    func fetchColleges() async throws -> [College] {
        try await firebase.fetchSchools()
    }
    
    func fetchMajors(schoolId: String) async throws -> [NewMajor] {
        try await firebase.fetchMajors(schoolId: schoolId)
    }
    
    func streamMajors(schoolId: String, completion: @escaping (Result<[NewMajor], Error>) -> ()) {
        firebase.streamMajors(schoolId: schoolId, completion: completion)
    }
    
    func fetchPersonnel(schoolId: String, majorId: String) async throws -> [Personnel] {
        try await firebase.fetchPersonnel(schoolId: schoolId, majorId: majorId)
    }
    
    func fetchOutcomes(schoolId: String, majorId: String) async throws -> [NewOutcome] {
        try await firebase.fetchOutcomes(schoolId: schoolId, majorId: majorId)
    }
    
    func fetchRequirements(schoolId: String, majorId: String) async throws -> [Requirements] {
        try await firebase.fetchRequirements(schoolId: schoolId, majorId: majorId)
    }
    
    func fetchModules(schoolId: String, majorId: String) async throws -> [Module] {
        try await firebase.fetchModules(schoolId: schoolId, majorId: majorId)
    }
    
    func streamReviews(
        collegeId: String,
        majorId: String,
        completion: @escaping (Result<[Review], Error>) -> ()
    ) {
        firebase.streamReviews(collegeId: collegeId, majorId: majorId, completion: completion)
    }
    
    func addFavorite(userId: String, major: NewMajor, college: College) async throws {
        try await firebase.addFavorite(userId: userId, college: college, major: major)
    }
    
    func addReview(collegeId: String, majorId: String, review: Review) async throws {
        try await firebase.addReview(collegeId: collegeId, majorId: majorId, review: review)
    }
    
    func updateReview(collegeId: String, majorId: String, review: Review) async throws {
        try await firebase.updateMajorReview(collegeId: collegeId, majorId: majorId, review: review)
    }
    
    func removeMajorReview(collegeId: String, majorId: String, reviewId: String) async throws {
        try await firebase.removeMajorReview(collegeId: collegeId, majorId: majorId, reviewId: reviewId)
    }
    
    func removeFavorite(userId: String, favoriteId: String) async throws {
        try await firebase.removeFavorite(userId: userId, favoriteId: favoriteId)
    }
    
    func streamAuthState(completion: @escaping (User?) -> ()) {
        firebase.streamAuthState(completion: completion)
    }
    
    func streamUserFavoriteMajors(userId: String, completion: @escaping (Result<[Favorite], Error>) -> ()) {
        firebase.streamUserFavoriteMajors(userId: userId, completion: completion)
    }
    
    func streamUserFavoriteMajor(
        userId: String,
        majorId: String,
        completion: @escaping (Result<Favorite, Error>) -> ()
    ) {
        firebase.streamUserFavoriteMajor(majorId: majorId, userId: userId, completion: completion)
    }
    
    func streamUser(
        userId: String,
        completion: @escaping (Result<FirebaseUser, Error>) -> ()
    ) -> ListenerRegistration {
        return firebase.streamUser(userId: userId, completion: completion)
    }
    
    func fetchLocalMajors(_ ref: String) async -> [Major]? {
        if let url = Bundle.main.url(forResource: ref, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Major].self, from: data)
                return jsonData
            } catch {
                print("Error loading file:", error)
            }
        } else {
            print("Error loading file:", ref)
        }
        return nil
    }
    
    func fetchCurriculumData(from urlString: String) async throws -> Data {
        guard let url = URL(string: urlString) else {
            throw URLError(.badURL)
        }
        let (data, response) = try await URLSession.shared.data(from: url)
        if let httpResponse = response as? HTTPURLResponse, (200..<300).contains(httpResponse.statusCode) {
            return data
        } else if let httpResponse = response as? HTTPURLResponse {
            throw URLError(.badServerResponse, userInfo: ["HTTPStatusCode": httpResponse.statusCode])
        } else {
            throw URLError(.unknown)
        }
    }
    
    func fetchImages(urls: [URL]) async -> [URL: UIImage?] {
        var imageCache: [URL: UIImage?] = [:]
        
        await withTaskGroup(of: (URL, UIImage?).self) { group in
            for url in urls {
                group.addTask {
                    if let image = await self.fetchImageAsync(from: url) {
                        return (url, image)
                    }
                    return (url, nil)
                }
            }
            
            for await (url, image) in group {
                imageCache[url] = image
            }
        }
        
        return imageCache
    }
    
    func fetchImage(url: URL) async -> UIImage? {
        return await self.fetchImageAsync(from: url)
    }
    
    func fetchOisCourses(with uuids: [String]) async throws -> Data {
        // Endpoint URL
        let url = URL(string: "https://ois2.ut.ee/api/courses")! // Replace with your API endpoint
        
        // Setup the request
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        // Create the body
        let requestBody = RequestBody(uuids: uuids)
        request.httpBody = try JSONEncoder().encode(requestBody)
        
        // Send the request
        let (data, _) = try await URLSession.shared.data(for: request)
        
        return data
    }
    
    func openLink(with url: URL) {
        UIApplication.shared.open(url)
    }
    
    func openLink(with urlString: String) {
        if let validLink = URL(string: urlString) {
            UIApplication.shared.open(validLink)
        } else {
            print("Not valid URL string: \(urlString)")
        }
    }
    
    func callNumber(with phoneNumber: String) {
        let baseUrl = OEAppearance.Locale.network.telHttps
        let urlString = baseUrl + phoneNumber
        if let validLink = URL(string: urlString) {
            UIApplication.shared.open(validLink)
        } else {
            print("Not valid phone number: \(urlString)")
        }
    }
    
    func openMail(with emailAddress: String) {
        let prefix = "mailto:"
        let urlString = prefix + emailAddress
        if let validLink = URL(string: urlString) {
            UIApplication.shared.open(validLink)
        } else {
            print("Not valid email: \(urlString)")
        }
    }
}

private extension NetworkManager {
    func fetchImageAsync(from url: URL) async -> UIImage? {
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            return UIImage(data: data)
        } catch {
            print("Error fetching image async: \(error)")
            return nil
        }
    }
}

private extension NetworkManager {
    struct RequestBody: Codable {
        let uuids: [String]
    }
}
