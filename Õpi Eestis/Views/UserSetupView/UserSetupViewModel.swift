import SwiftUI
import PhotosUI

extension UserSetupView {
    class Model: ObservableObject {
        let id: String
        let email: String
        @Published var firstName: String = ""
        @Published var lastName: String = ""
        @Published var selectedNationality: Nationality = .init(name: "Estonia", symbol: "🇪🇪")
        @Published var image: UIImage?
        @Published var selectedImages: [PhotosPickerItem] = []
        @Published var viewState: ViewState = .normal
        
        init(user: AppState.PendingUser) {
            self.id = user.id
            self.email = user.email ?? ""
        }
        
        var isFormfilled: Bool {
            guard !firstName.isEmpty else { return false }
            guard !lastName.isEmpty else { return false }
            return true
        }
        
        func setPickedImageData() {
            guard let item = selectedImages.first else { return }
            item.loadTransferable(type: Data.self) { [weak self] result in
                guard let self else { return }
                switch result {
                case .success(let success):
                    if let data = success, let newImage = UIImage(data: data) {
                        DispatchQueue.main.async {
                            self.image = newImage
                        }
                    }
                case let .failure(error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}

extension UserSetupView.Model {
    enum ViewState {
        case loading
        case normal
    }
}
