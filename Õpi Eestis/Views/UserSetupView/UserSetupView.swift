import SwiftUI
import PhotosUI

struct UserSetupView: View {
    @EnvironmentObject var appState: AppState
    @StateObject var model: Model
    
    var body: some View {
        NavigationView {
            switch model.viewState {
            case .loading:
                ProgressView().progressViewStyle(.circular)
            case .normal:
                Form {
                    Section(content: imageContent)
                        .listRowSeparator(.hidden)
                    Section(content: {
                        TextField("", text: $model.firstName, prompt: Text(Theme.Locale.MyAccount.firstName))
                        TextField("", text: $model.lastName, prompt: Text(Theme.Locale.MyAccount.lastName))
                    }, header: {
                        Text(Theme.Locale.UserSetup.name)
                    })
                    
                    Picker(Theme.Locale.UserSetup.nationality, selection: $model.selectedNationality) {
                        ForEach(Nationality.nations, id: \.name) { nationality in
                            HStack {
                                Text(nationality.symbol)
                                Text(nationality.name)
                            }
                            .tag(nationality)
                            .setFont(.subheadline, .regular, .rounded)
                        }
                    }
                    .pickerStyle(.navigationLink)
                    
                    Section(content: {
                        Text(model.email)
                            .setColor(Theme.Colors.gray)
                    }, header: {
                        Text(Theme.Locale.UserSetup.email)
                    })
                    signupButton()
                }
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        TitleView(Theme.Locale.UserSetup.title)
                    }
                }
            }
        }
        .interactiveDismissDisabled()
        .navigationBarTitleDisplayMode(.inline)
        .onChange(of: model.selectedImages) { _ in
            model.setPickedImageData()
        }
    }
    
    @ViewBuilder
    func signupButton() -> some View {
        Button(action: {
            print("Button pressed")
            model.viewState = .loading
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                appState.setupNewUser(
                    id: model.id,
                    firstName: model.firstName,
                    lastName: model.lastName,
                    email: model.email, 
                    nationality: model.selectedNationality,
                    photo: model.image
                )
            }
        }, label: {
            Text(Theme.Locale.UserSetup.signup)
                .setColor(.white)
                .maxWidth()
                .padding(.vertical)
                .background(Theme.Colors.primary.gradient)
                .clipShape(.rect(cornerRadius: 12, style: .continuous))
        })
        .listRowInsets(.zero)
        .disabled(!model.isFormfilled)
        .opacity(model.isFormfilled ? 1 : 0.5)
    }
    
    @ViewBuilder
    func imageContent() -> some View {
        if let image = model.image {
            profilePhoto(image: image)
        } else {
            placeholderPhoto()
        }
        photoPicker()
    }
    
    @ViewBuilder
    func photoPicker() -> some View {
        PhotosPicker(
            selection: $model.selectedImages,
            maxSelectionCount: 1,
            matching: .images
        ) {
            if model.image == nil {
                addPhotoBotton()
            } else {
                editPhotoButton()
            }
        }
        .listRowBackground(Color.clear)
    }
    
    @ViewBuilder
    func placeholderPhoto() -> some View {
        Theme.Icons.person
            .resizable()
            .fit()
            .maxWidth()
            .frame(height: 100)
            .padding(32)
            .background(Circle().fill(Color.white))
            .listRowBackground(Color.clear)
            .setColor(Theme.Colors.primary.gradient)
    }
    
    @ViewBuilder
    func addPhotoBotton() -> some View {
        HStack {
            Theme.Icons.plus
            Text(Theme.Locale.MyAccount.addPhoto)
        }
        .setFont(.subheadline, .medium, .rounded)
        .setColor(Theme.Colors.primary)
        .padding(.horizontal, 12)
        .padding(.vertical, 6)
        .background(Capsule().fill(Theme.Colors.primary.opacity(0.175)))
        .maxWidth()
    }
    
    @ViewBuilder
    func editPhotoButton() -> some View {
        HStack {
            Theme.Icons.edit
                .offset(x: 0, y: -1)
            Text(Theme.Locale.MyAccount.editPhoto)
        }
        .setFont(.subheadline, .medium, .rounded)
        .setColor(Theme.Colors.primary)
        .padding(.horizontal, 12)
        .padding(.vertical, 6)
        .background(Capsule().fill(Theme.Colors.primary.opacity(0.175)))
        .maxWidth()
    }
    
    @ViewBuilder
    func profilePhoto(image: UIImage) -> some View {
        Image(uiImage: image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 164, height: 164)
            .clipShape(.circle)
            .overlay(
                Circle()
                    .stroke(Theme.Colors.primary.opacity(0.25), lineWidth: 8)
            )
            .maxWidth()
            .listRowBackground(Color.clear)
    }
}
