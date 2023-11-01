import SwiftUI
import FirebaseFirestore
import FirebaseStorage
import UIKit
import FirebaseDatabase
import FirebaseAuth
import FirebaseFirestoreSwift
import Combine
import Firebase

struct FirebaseManager {
    private let database = Firestore.firestore()
    private let storage = Storage.storage()
    private let maxSize: Int64 = 1 * 1024 * 1024 * 32
    
    func fetchUser(userId: String) async throws -> FirebaseUser? {
        let snapshot = try await docRefernce(for: .user(userId: userId)).getDocument()
        guard snapshot.exists else { return nil }
        return try decodeDocument(document: snapshot)
    }
    
    func fetchSchools() async throws -> [College] {
        let snapshot = try await query(for: .schools).getDocuments()
        return try decodeSnapshots(snapshot: snapshot)
    }
    
    func fetchMajors(schoolId: String) async throws -> [NewMajor] {
        let snapshot = try await query(for: .majors(schoolId: schoolId)).getDocuments()
        return try decodeSnapshots(snapshot: snapshot)
    }
    
    func fetchRequirements(schoolId: String, majorId: String) async throws -> [Requirements] {
        let snapshot = try await query(for: .requirements(schoolId: schoolId, majorId: majorId)).getDocuments()
        return try decodeSnapshots(snapshot: snapshot)
    }
    
    func fetchOutcomes(schoolId: String, majorId: String) async throws -> [NewOutcome] {
        let snapshot = try await query(for: .outcomes(schoolId: schoolId, majorId: majorId)).getDocuments()
        return try decodeSnapshots(snapshot: snapshot)
    }
    
    func fetchPersonnel(schoolId: String, majorId: String) async throws -> [Personnel] {
        let snapshot = try await query(for: .personnel(schoolId: schoolId, majorId: majorId)).getDocuments()
        return try decodeSnapshots(snapshot: snapshot)
    }
    
    func fetchModules(schoolId: String, majorId: String) async throws -> [Module] {
        let snapshot = try await query(for: .module(schoolId: schoolId, majorId: majorId)).getDocuments()
        return try decodeSnapshots(snapshot: snapshot)
    }
    
    func addFavorite(
        userId: String,
        college: College,
        major: NewMajor
    ) async throws {
        let ref = docRefernce(for: .createUserFavoriteMajor(userId: userId))
        let documentId = ref.documentID
        let favorite: Favorite = .init(id: documentId, collegeId: college.id, major: major)
        try await addDocument(path: ref, as: favorite)
    }
    
    func removeFavorite(userId: String, favoriteId: String) async throws {
        let ref = docRefernce(for: .removeUserFavoriteMajor(userId: userId, favoriteId: favoriteId))
        try await ref.delete()
    }
    
    func updateUser(user: FirebaseUser) async throws {
        let userDocRef = docRefernce(for: .user(userId: user.id))
        if let data = objectToDictionary(user) {
            try await userDocRef.updateData(data)
        } else {
            throw createError("Dict failed")
        }
    }
    
    func updateUserData(data: [String: String], userId: String) async throws {
        let userDocRef = docRefernce(for: .user(userId: userId))
        try await userDocRef.updateData(data)
    }
    
    func createUser(user: FirebaseUser) async throws {
        let userDocRef = docRefernce(for: .user(userId: user.id))
        if let data = objectToDictionary(user) {
            try await userDocRef.setData(data)
        } else {
            throw createError("Dict failed")
        }
    }
    
    func streamMajors(
        schoolId: String,
        completion: @escaping (Result<[NewMajor], Error>) -> ()
    ) {
        query(for: .majors(schoolId: schoolId))
            .addSnapshotListener {
                decodeSnapshots(snapshot: $0, error: $1, completion: completion)
            }
    }
    
    func streamUserFavoriteMajor(
        majorId: String,
        userId: String,
        completion: @escaping (Result<Favorite, Error>) -> ()
    ) {
        query(for: .userFavoriteMajor(userId: userId, majorId: majorId))
            .addSnapshotListener {
                decodeSnapshot(snapshot: $0, error: $1, completion: completion)
            }
    }
    
    func streamAuthState(completion: @escaping (User?) -> ()) {
        Auth.auth().addStateDidChangeListener { (auth, user) in
            if let user = user {
                completion(user)
            } else {
                completion(nil)
            }
        }
    }
    
    func streamUserFavoriteMajors(
        userId: String,
        completion: @escaping (Result<[Favorite], Error>) -> ()
    ) {
        query(for: .userFavoriteMajors(userId: userId))
            .addSnapshotListener {
                decodeSnapshots(snapshot: $0, error: $1, completion: completion)
            }
    }
    
    func streamUser(
        userId: String,
        completion: @escaping (Result<FirebaseUser, Error>) -> ()
    ) -> ListenerRegistration {
        return docRefernce(for: .user(userId: userId))
            .addSnapshotListener {
                decodeDocument(snapshot: $0, error: $1, completion: completion)
            }
    }
}

private extension FirebaseManager {
    func query(for reference: QueryReference) -> Query {
        switch reference {
        case .schools:
            return database
                .collection("Schools")
        case let .majors(schoolId):
            return database
                .collection("Schools")
                .document(schoolId)
                .collection("majors")
        case let .requirements(schoolId, majorId):
            return database
                .collection("Schools")
                .document(schoolId)
                .collection("majors")
                .document(majorId)
                .collection("requirements")
        case let .outcomes(schoolId, majorId):
            return database
                .collection("Schools")
                .document(schoolId)
                .collection("majors")
                .document(majorId)
                .collection("outcomes")
        case let .personnel(schoolId, majorId):
            return database
                .collection("Schools")
                .document(schoolId)
                .collection("majors")
                .document(majorId)
                .collection("personnel")
        case let .module(schoolId, majorId):
            return database
                .collection("Schools")
                .document(schoolId)
                .collection("majors")
                .document(majorId)
                .collection("modules")
        case let .userFavoriteMajors(userId):
            return database
                .collection("users")
                .document(userId)
                .collection("favoriteMajors")
        case let .userFavoriteMajor(userId, majorId):
            return database
                .collection("users")
                .document(userId)
                .collection("favoriteMajors")
                .whereField("major.id", isEqualTo: majorId)
        }
    }
}

private extension FirebaseManager {
    func docRefernce(for reference: DocReference) -> DocumentReference {
        switch reference {
        case let .major(schoolId, majorId):
            return database
                .collection("Schools")
                .document(schoolId)
                .collection("majors")
                .document(majorId)
        case let .user(userId):
            return database
                .collection("users")
                .document(userId)
        case let .createUserFavoriteMajor(userId):
            return database
                .collection("users")
                .document(userId)
                .collection("favoriteMajors")
                .document()
        case let .removeUserFavoriteMajor(userId, favoriteId):
            return database
                .collection("users")
                .document(userId)
                .collection("favoriteMajors")
                .document(favoriteId)
        }
    }
    
    func decodeSnapshot<T: Decodable>(snapshot: QuerySnapshot?, error: Error?, completion: @escaping (Result<T, Error>) -> Void) {
        if let error = error {
            completion(.failure(error))
            return
        }
        
        guard let snapshot = snapshot else {
            let error = createError("Snapshot is nil for")
            completion(.failure(error))
            return
        }
        
        if let data = try? snapshot.documents.first?.data(as: T.self) {
            completion(.success(data))
        } else {
            let error = createError("Decoding error to \(T.self)")
            completion(.failure(error))
        }
    }
    
    func decodeSnapshots<T: Decodable>(snapshot: QuerySnapshot?, error: Error?, completion: @escaping (Result<[T], Error>) -> Void) {
        error.unwrap {
            completion(.failure($0))
        }
        
        guard let snapshot = snapshot else {
            let error = createError("Snapshot is nil for")
            completion(.failure(error))
            return
        }
        do {
            let data = try snapshot.documents.map({ try $0.data(as: T.self) })
            completion(.success(data))
        } catch {
            completion(.failure(error))
        }
    }
    
    func decodeSnapshots<T: Decodable>(snapshot: QuerySnapshot) throws -> [T] {
        guard !snapshot.documents.isEmpty else {
            throw createError("Snapshot is empty")
        }
        return try snapshot.documents.compactMap({ try $0.data(as: T.self) })
    }

    
    func createError(_ text: String) -> NSError {
        return NSError(domain: "Error", code: 0, userInfo: [NSLocalizedDescriptionKey: text])
    }
    
    func objectToDictionary<T: Encodable>(_ object: T) -> [String: Any]? {
        let encoder = JSONEncoder()
        guard let data = try? encoder.encode(object) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)) as? [String: Any]
    }
    
    func decodeDocument<T: Decodable>(document: DocumentSnapshot) throws -> T {
        guard let data = try? document.data(as: T.self) else {
            throw createError("Decoding error to \(T.self)")
        }
        return data
    }
    
    func decodeDocument<T: Decodable>(snapshot: DocumentSnapshot?, error: Error?, completion: @escaping (Result<T, Error>) -> Void) {
        if let error = error {
            completion(.failure(error))
        }
        
        guard let snapshot = snapshot else {
            let error = createError("Snapshot is nil for")
            completion(.failure(error))
            return
        }
        
        if let data = try? snapshot.data(as: T.self) {
            completion(.success(data))
        } else {
            let error = createError("Decoding error to \(T.self)")
            completion(.failure(error))
        }
    }
    
    func imageResonse(data: Data?, error: Error?, completion: @escaping (Result<UIImage, Error>) -> Void) {
        if let error = error {
            print(error)
        } else {
            let error = createError("firebase image is nil")
            if let data = data, let uiImage = UIImage(data: data) {
                completion(.success(uiImage))
            } else {
                completion(.failure(error))
            }
        }
    }
    
    func addDocument<T: Encodable>(path: DocumentReference, as object: T) async throws {
        guard let dictionary = try? Firestore.Encoder().encode(object) else {
            throw NSError(domain: "com.error", code: 999, userInfo: ["description": "Error converting object to dictionary"])
        }
        
        try await path.setData(dictionary)
    }
}

extension FirebaseManager {
    enum QueryReference {
        case schools
        case majors(schoolId: String)
        case requirements(schoolId: String, majorId: String)
        case outcomes(schoolId: String, majorId: String)
        case personnel(schoolId: String, majorId: String)
        case module(schoolId: String, majorId: String)
        case userFavoriteMajors(userId: String)
        case userFavoriteMajor(userId: String, majorId: String)
    }
    
    enum DocReference {
        case major(schoolId: String, majorId: String)
        case user(userId: String)
        case createUserFavoriteMajor(userId: String)
        case removeUserFavoriteMajor(userId: String, favoriteId: String)
    }
}
