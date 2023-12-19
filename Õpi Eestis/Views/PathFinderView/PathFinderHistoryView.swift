import SwiftUI

struct PathFinderHistoryView: View {
    @StateObject var model: Model
    
    var body: some View {
        VStack {
            Text("Nothing here yet pussyboi")
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading, content: backButton)
            ToolbarItem(placement: .principal, content: titleView)
        }
        .navigationBarBackButtonHidden(true)
    }
    
    @ViewBuilder
    func titleView() -> some View {
        TitleView(Theme.Locale.PathFinder.History.title)
    }
    
    @ViewBuilder
    func backButton() -> some View {
        BackButton(color: Theme.Colors.primary)
    }
}

extension PathFinderHistoryView {
    class Model: ObservableObject {
        let colleges: [College]
        
        init(colleges: [College]) {
            self.colleges = colleges
        }
    }
}
