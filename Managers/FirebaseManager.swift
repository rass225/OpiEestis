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
    
    func fetchSchools(completion: @escaping (Result<[College], Error>) -> ()) {
        query(for: .fetchSchools)
            .getDocuments {
                decodeSnapshots(snapshot: $0, error: $1, completion: completion)
            }
    }
    
    func fetchSchoolImage(
        ref: String,
        completion: @escaping (Result<UIImage, Error>) -> ()
    ) {
        query(for: .fetchLogo(ref: ref))
            .getData(maxSize: maxSize) {
                imageResonse(data: $0, error: $1, completion: completion)
            }
    }
    
    func fetchLinkImage(
        ref: String,
        completion: @escaping (Result<UIImage, Error>) -> ()
    ) {
        query(for: .fetchLinkImage(ref: ref))
            .getData(maxSize: maxSize) {
                imageResonse(data: $0, error: $1, completion: completion)
            }
    }
    
    func fetchImage(
        ref: String,
        completion: @escaping (Result<UIImage, Error>) -> ()
    ) {
        query(for: .fetchImage(ref: ref))
            .getData(maxSize: maxSize) {
                imageResonse(data: $0, error: $1, completion: completion)
            }
    }
}

private extension FirebaseManager {
    func query(for reference: QueryReference) -> Query {
        switch reference {
        case .fetchSchools:
            return database.collection("Schools")
        }
    }
    
    func query(for reference: StoreReference) -> StorageReference {
        let baseUrl = "gs://opi-eestis.appspot.com"
        switch reference {
        case .fetchLogo(let ref):
            return storage.reference(forURL: "\(baseUrl)/Logos/\(ref)")
        case let .fetchLinkImage(ref):
            return storage.reference(forURL: "\(baseUrl)/Links/\(ref)")
        case .fetchImage(ref: let ref):
            return storage.reference(forURL: "\(baseUrl)/Images/\(ref)")
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
    
    func createError(_ text: String) -> NSError {
        return NSError(domain: "Error", code: 0, userInfo: [NSLocalizedDescriptionKey: text])
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
}

extension FirebaseManager {
    enum QueryReference {
        case fetchSchools
    }
    
    enum StoreReference {
        case fetchLogo(ref: String)
        case fetchLinkImage(ref: String)
        case fetchImage(ref: String)
    }
}
