import SwiftUI
import PhotosUI

struct MyAccountView: View {
    @EnvironmentObject var appState: AppState
    @StateObject var model: Model

    var body: some View {
        Form {
            Section(content: imageContent)
                .listRowSeparator(.hidden)
            Section(content: nameContent, header: nameHeader)
            Section(content: emailContent, header: emailHeader)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading, content: backButton)
            ToolbarItem(placement: .principal, content: titleView)
        }
        .onChange(of: model.selectedImages) { _ in
            model.setPickedImageData()
        }
    }
}

// MARK: - Buttons

extension MyAccountView {
    @ViewBuilder
    func backButton() -> some View {
        BackButton(color: Theme.Colors.primary)
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
}

// MARK: - View Components

extension MyAccountView {
    @ViewBuilder
    func nameContent() -> some View {
        TextField("", text: $model.firstName, prompt: Text(Theme.Locale.MyAccount.firstName))
            .onReceive(model.$firstName.debounce(for: 0.5, scheduler: RunLoop.main)) { _ in
                model.updateFirstName()
            }
        TextField("", text: $model.lastName, prompt: Text(Theme.Locale.MyAccount.lastName))
            .onReceive(model.$lastName.debounce(for: 0.5, scheduler: RunLoop.main)) { _ in
                model.updateLastName()
            }
    }
    
    @ViewBuilder
    func emailContent() -> some View {
        TextField("", text: $model.email, prompt: Text(Theme.Locale.MyAccount.email))
            .onReceive(model.$email.debounce(for: 0.5, scheduler: RunLoop.main)) { _ in
                model.updateEmail()
            }
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
    func titleView() -> some View {
        TitleView(Theme.Locale.MyAccount.title)
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

// MARK: - Headers
extension MyAccountView {
    @ViewBuilder
    func emailHeader() -> some View {
        Text(Theme.Locale.MyAccount.email)
    }
    
    @ViewBuilder
    func nameHeader() -> some View {
        Text(Theme.Locale.MyAccount.name)
    }
}
