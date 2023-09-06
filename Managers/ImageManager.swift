import SwiftUI

class ImageManager: ObservableObject {
    private var currentImages: [StoredImage] = []
    private let firebase: FirebaseManager
    private let maxSize: Int64
    
    init(
        firebase: FirebaseManager = FirebaseManager(),
        maxSize: Int64 = 1 * 1024 * 1024 * 32
    ) {
        self.firebase = firebase
        self.maxSize = maxSize
    }
    
    public func loadLinkImage(imageRef: String, completion: @escaping (UIImage) -> Void) {
        if let currentImage = checkSession(imageRef: imageRef) {
            completion(currentImage)
        } else if let localStorage = checkLocalStorage(imageRef: imageRef) {
            addToSession(imageRef: imageRef, image: localStorage)
            completion(localStorage)
        } else {
            firebase.fetchLinkImage(ref: imageRef) { [weak self] result in
                guard let self else { return }
                switch result {
                case .success(let success):
                    addToSession(imageRef: imageRef, image: success)
                    addToLocalStorage(imageRef: imageRef, image: success)
                    completion(success)
                case .failure:
                    completion(UIImage())
                }
            }
        }
    }
    
    public func loadCollegeImage(ref: String, completion: @escaping (UIImage) -> Void) {
        if let currentImage = checkSession(imageRef: ref) {
            completion(currentImage)
        } else if let localStorage = checkLocalStorage(imageRef: ref) {
            addToSession(imageRef: ref, image: localStorage)
            completion(localStorage)
        } else {
            firebase.fetchSchoolImage(ref: ref) { [weak self] result in
                guard let self else { return }
                switch result {
                case .success(let success):
                    addToSession(imageRef: ref, image: success)
                    addToLocalStorage(imageRef: ref, image: success)
                    completion(success)
                case .failure:
                    completion(UIImage())
                }
            }
        }
    }
    
    public func loadImage(ref: String, completion: @escaping (UIImage) -> Void) {
        if let currentImage = checkSession(imageRef: ref) {
            completion(currentImage)
        } else if let localStorage = checkLocalStorage(imageRef: ref) {
            addToSession(imageRef: ref, image: localStorage)
            completion(localStorage)
        } else {
            firebase.fetchImage(ref: ref) { [weak self] result in
                guard let self else { return }
                switch result {
                case .success(let success):
                    addToSession(imageRef: ref, image: success)
                    addToLocalStorage(imageRef: ref, image: success)
                    completion(success)
                case .failure:
                    completion(UIImage())
                }
            }
        }
    }
    
//    public func loadCompanyImage(link: CollegeLink, completion: @escaping (UIImage) -> Void) {
//        if let currentImage = checkSession(imageRef: link.imageRef) {
//            completion(currentImage)
//        } else if let localStorage = checkLocalStorage(imageRef: link.imageRef) {
//            addToSession(imageRef: link.imageRef, image: localStorage)
//            completion(localStorage)
//        } else {
//            firebase.fetchLinkImage(ref: link.imageRef) { [weak self] result in
//                guard let self else { return }
//                switch result {
//                case .success(let success):
//                    addToSession(imageRef: link.imageRef, image: success)
//                    addToLocalStorage(imageRef: link.imageRef, image: success)
//                    completion(success)
//                case .failure:
//                    completion(UIImage())
//                }
//            }
//        }
//    }
//    
    public func removeImageFromSession(imageRef: String) {
        currentImages.removeAll(where: { $0.imageRef == imageRef })
    }
}

private extension ImageManager {
    func checkSession(imageRef: String) -> UIImage? {
        guard let savedImage = currentImages.first(where: { $0.imageRef == imageRef }) else { return nil }
        
        return savedImage.image
    }
    
    func checkLocalStorage(imageRef: String) -> UIImage? {
        guard let savedImage = UserDefaults.standard.data(forKey: imageRef) else { return nil }
        return UIImage(data: savedImage)
    }
    
    func addToSession(imageRef: String, image: UIImage?) {
        guard let image = image else {
            debugPrint("Failed: Adding image to session")
            return
        }
        let curretImage = StoredImage(image: image, imageRef: imageRef)
        currentImages.append(curretImage)
    }
    
    func addToLocalStorage(imageRef: String, image: UIImage?) {
        guard let newImage = image?.pngData() else {
            debugPrint("Failed: Adding image to local storage")
            return
        }
        UserDefaults.standard.set(newImage, forKey: imageRef)
    }
}

extension ImageManager {
    struct StoredImage: Identifiable {
        var id = UUID().uuidString
        let image: UIImage
        let imageRef: String
    }
}
