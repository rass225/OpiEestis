import SwiftUI
import Combine
import PhotosUI
import FirebaseStorage
import FirebaseFirestore

extension MyAccountView {
    class Model: ObservableObject {
        @Published var firstName: String
        @Published var lastName: String
        @Published var email: String
        @Published var image: UIImage?
        @Published var selectedImages: [PhotosPickerItem] = []
        
        private let dependencies: DependencyManager
        private var subscriptions: Set<AnyCancellable> = []
        private let debounceTime: TimeInterval = 0.75
        private var userInternal: FirebaseUser
        private let userId: String
        
        init(
            user: FirebaseUser,
            dependencies: DependencyManager = .shared
        ) {
            self.firstName = user.firstName ?? ""
            self.lastName = user.lastName ?? ""
            self.email = user.email ?? ""
            self.userId = user.id
            self.userInternal = user
            self.dependencies = dependencies
            
            streamUser()
        }
        
        func updateFirstName() {
            guard firstName != userInternal.firstName, firstName != "" else { return }
            Task {
                let data = ["firstName": firstName]
                try await dependencies.network.updateUserData(data: data, userId: userInternal.id)
                print("First name updated")
            }
        }
        
        func updateLastName() {
            guard lastName != userInternal.lastName, lastName != "" else { return }
            Task {
                let data = ["lastName": lastName]
                try await dependencies.network.updateUserData(data: data, userId: userInternal.id)
                print("Last name updated")
            }
        }
        
        func updateEmail() {
            guard email != userInternal.email, email != "" else { return }
            Task {
                let data = ["email": email]
                try await dependencies.network.updateUserData(data: data, userId: userInternal.id)
                print("Email updated")
            }
        }
        
        func setPickedImageData() {
            guard let item = selectedImages.first else { return }
            item.loadTransferable(type: Data.self) { [weak self] result in
                guard let self else { return }
                switch result {
                case .success(let success):
                    if let data = success, let newImage = UIImage(data: data) {
                        self.uploadImage(newImage)
                    }
                case let .failure(error):
                    print(error.localizedDescription)
                }
            }
        }
        
        func uploadImage(_ image: UIImage) {
            guard let data = image.jpegData(compressionQuality: 0.8) else { return }
            
            let storage = Storage.storage()
            let storageRef = storage.reference()
            let photoRef = storageRef.child("photos/\(UUID().uuidString).jpg")
            
            photoRef.putData(data, metadata: nil) { _, error in
                if let error = error {
                    print("Error uploading photo: \(error)")
                    return
                }
                
                photoRef.downloadURL { url, error in
                    if let error = error {
                        print("Error fetching download URL: \(error)")
                        return
                    }
                    
                    if let downloadUrl = url {
                        self.saveImageUrlToFirestore(downloadUrl.absoluteString)
                    }
                }
            }
        }
        
        func saveImageUrlToFirestore(_ imageUrl: String) {
            Task {
                try await dependencies.network.updateUserData(data: ["photoUrl": imageUrl], userId: userId)
            }
        }
    }
}

private extension MyAccountView.Model {
    func streamUser() {
        _ = dependencies.network.streamUser(userId: userId) { [weak self] result in
            guard let self else { return }
            switch result {
            case let .success(user):
                self.userInternal = user
                guard let photoUrlString = user.photoUrl else { return }
                guard let url = URL(string: photoUrlString) else { return }
                
                Task {
                    let image = await self.dependencies.network.fetchImage(url: url)
                    DispatchQueue.main.async {
                        self.image = image
                    }
                }
            case let .failure(error):
                print(error.localizedDescription)
            }
        }
    }
}
