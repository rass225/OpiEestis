import SwiftUI
import MessageUI

struct OEToolBar: View {
    @EnvironmentObject var appState: AppState
    @Environment(\.presentationMode) var presentationMode
    let presenter = UserDefaultsManager()
    @State var result: Result<MFMailComposeResult, Error>? = nil
    @State var isShowingMailView = false
    @State var showActionSheet = false
    
    enum Title: String {
        case favorites = "Lemmikud"
        case course = "Moodulid"
        case requirements = "Sisseastumine"
        case outcomes = "Õpiväljundid"
        case personnel = "Personal"
        case about = "Rakendusest"
    }

    var toggle: Binding<Bool>?
    var isFavorite: Binding<Bool>?
    
    var type: ButtonType
    let image: Image
    let color: Color
    init(type: ButtonType, color: Color) {
        self.type = type
        self.color = color
        
        switch type {
        case .dismiss:
            image = .chevronLight
        case .logo(let school):
            image = Image(school.logo.rawValue)
        case .favorites(let isActive):
            image = .chevronDown
            toggle = isActive
        case .sort(let isAcending):
            image = .flip
            toggle = isAcending
        case .search(let isSearching):
            image = .magnifyingGlass
            toggle = isSearching
        case .toAbout(let isActive):
            image = .chevronDown
            toggle = isActive
        case .majorFavorites(let isFavorite, _, _, let toFavorites):
            image =  .outcomes
            self.isFavorite = isFavorite
            toggle = toFavorites
        case .title:
            image = .star
        case .map:
            image = .mapFill
        case .none:
            image = .info
        case .conditionalDismiss:
            image = .chevronLight
        }
    }
   
    
    var body: some View {
        switch type {
        case .dismiss:
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                navBarImage(color: color, image: .chevronLight)
            }
        case .logo(let school):
            Button(action: {
                appState.rootViewId = UUID()
//                showActionSheet.toggle()
            }) {
                image
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                    .frame(width: 65)
                
            }.actionSheet(isPresented: $showActionSheet) {
                let title = Text(school.name.rawValue)
                let address = Text("\(school.contact.address), \(school.location.city.rawValue)")
                return ActionSheet(title: title, message: address, buttons: [
                    .default(Text("Koduleht")) { school.goHomePage() },
                    .default(Text("Helista")) { school.phoneCall() },
                    .default(Text("Email")) { isShowingMailView.toggle() },
                    .cancel(Text("Tagasi"))
                ])
            }.disabled(!MFMailComposeViewController.canSendMail())
        case .favorites:
            Button(action: {
                toggle?.wrappedValue.toggle()
            }) {
                navBarImage(isPrimary: true, color: color, image: .starFill)
            }
        case .sort:
            Button(action: {
                toggle?.wrappedValue.toggle()
            }) {
                navBarImage(color: color, image: .flip)
            }
        case .search:
            Button(action: {
                withAnimation{
                    toggle?.wrappedValue.toggle()
                }
            }) {
                navBarImage(color: color, image: .magnifyingGlass)
            }
        case .toAbout:
            Button(action: {
                toggle?.wrappedValue.toggle()
            }) {
                Logo()
            }
        case .majorFavorites(_, let school, let major, _):
            Menu {
                Button(action: {
                    
                    favoriteManager(school: school, major: major)
                }) {
//                    if major.isFavorite(school: school) {
//                        Label("Eemalda", systemImage: "minus")
//                    } else {
//                        Label("Lisa", systemImage: "plus")
//                    }
                }
                Button(action: {
                    toggle?.wrappedValue.toggle()
                }) {
                    Label("Lemmikud", systemImage: "folder")
                }
            }
            label: {
                if let isFavorite = isFavorite {
                    if isFavorite.wrappedValue {
                        navBarImage(color: color, image: .starFill)
                    } else {
                        navBarImage(color: color, image: .star)
                    }
                }
                
            }
        case .title(let type):
            Text(type.rawValue)
                .font(.semiBoldBody)
                .foregroundColor(.black)
        case .map:
            Image.mapFill
        case .none:
            EmptyView()
        case .conditionalDismiss(let isAvailable):
            if isAvailable {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    navBarImage(color: color, image: .chevronLight)
                }
            }
        }
    }
}

extension OEToolBar {
    private func favoriteManager(school: School, major: majorsMinors) {
        if let isFavorite = isFavorite {
            if isFavorite.wrappedValue {
//                presenter.removeFavorite(school: school, majorName: major.name)
//                isFavorite.wrappedValue = false
            } else {
//                let favorite = Favorites(school: school, majors: [major])
//                presenter.addFavorite(favorite: favorite)
//                isFavorite.wrappedValue = true
            }
        }
    }
}

enum ButtonType {
    case conditionalDismiss(isAvailable: Bool = true)
    case dismiss
    case logo(school: School)
    case favorites(toggle: Binding<Bool>)
    case majorFavorites(toggle: Binding<Bool>, school: School, major: majorsMinors, toFavorites: Binding<Bool>)
    case sort(toggle: Binding<Bool>)
    case search(toggle: Binding<Bool>)
    case toAbout(toggle: Binding<Bool>)
    case title(type: Title)
    case map
    case none
}

enum Title: String {
    case favorites = "Lemmikud"
    case course = "Moodulid"
    case requirements = "Sisseastumine"
    case outcomes = "Õpiväljundid"
    case personnel = "Personal"
    case about = "Rakendusest"
}

struct navBarImage: View {
    
    @State var isPrimary = false
    let color: Color
    let image: Image
    var body: some View {
        if isPrimary {
            image
                .frame(height: 35)
                .frame(width: 35)
                .setFont(.callout, .semibold, .rounded)
                .foregroundColor(.oeBlue)
        } else {
            image
                .frame(height: 35)
                .frame(width: 35)
                .setFont(.callout, .black, .rounded)
                .foregroundStyle(color.gradient)
        }
    }
}
