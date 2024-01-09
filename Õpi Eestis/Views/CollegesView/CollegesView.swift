import SwiftUI

struct CollegesView: View {
    @StateObject var model: Model
    
    @Namespace var animation
    var body: some View {
        VStack(spacing: 0) {
            tabView()
            switch model.tabSelection {
            case .collegesList:
                CollegesListView(model: .init(colleges: model.schools))
            case .collegesMap:
                MapView(locations: model.allBranches)
            }
        }
        .toolbarBackground(.hidden, for: .navigationBar)
    }
}

extension CollegesView {
    @ViewBuilder
    func tabView() -> some View {
        HStack {
            ForEach(model.availableTabs, id: \.self) { tab in
                tab.image
                    .setFont(.body, .regular, .rounded)
                    .maxSize()
                    .background {
                        if model.tabSelection == tab {
                            Capsule()
                                .fill(Color.white)
                                .matchedGeometryEffect(id: "TAB", in: animation)
                        }
                    }
                    .contentShape(.capsule)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.15)) {
                            model.switchTab(to: tab)
                        }
                    }
            }
        }
        .setColor(Theme.Colors.primary.gradient)
        .padding(2)
        .frame(height: 40)
        .background(TwoLayerCapsule())
        .padding(.horizontal, 16)
        .offset(x: 0, y: 20)
        .zIndex(100)
    }
}
