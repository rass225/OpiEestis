import SwiftUI

struct ErrorView: View {
    let error: ErrorType
    let viewType: ViewType
    
    var body: some View {
        switch viewType {
        case .icon:
            Theme.Icons.x
                .resizable()
                .setSymbol(.circle.fill, .palette)
                .frame(width: 200, height: 200)
                .setColor(Color.white, Color.red)
                .maxSize()
        case let .view(action):
            VStack(spacing: 8){
                Theme.Icons.error
                    .setFont(.largeTitle, .regular, .rounded)
                Text(error.label)
                    .setFont(.subheadline, .regular, .rounded)
                Button(action: action) {
                    Text(Theme.Locale.Error.buttonLabel)
                        .setFont(.subheadline, .regular, .rounded)
                        .setColor(.white)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 32)
                        .background(Theme.Colors.primary.gradient)
                        .clipShape(Capsule())
                }
                .padding(.top)
                .padding(.bottom, 32)
            }
            .setColor(.gray)
            .maxSize()
        }
    }
}

extension ErrorView {
    enum ViewType {
        case icon
        case view(action: () -> ())
    }
    
    enum ErrorType {
        case fetchSchools
        
        var label: LocalizedStringKey {
            switch self {
            case .fetchSchools:
                Theme.Locale.Error.fetchSchools
            }
        }
    }
}
