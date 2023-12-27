import SwiftUI

struct PersonalityTestView: View {
    @Namespace var animation
    @StateObject var model: Model = .init()
    
    var body: some View {
        VStack {
            switch model.viewState {
            case .start:
                startView()
            case .test:
                testView()
            case .processing:
                processingView()
            case .result:
                resultView()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(.automatic, for: .navigationBar)
        .toolbar {
            ToolbarItem(placement: .principal, content: AppPrincipal.init)
            ToolbarItem(placement: .navigationBarLeading, content: backButton)
        }
        .navigationBarBackButtonHidden(true)
    }
}

extension PersonalityTestView {
    @ViewBuilder
    func startView() -> some View {
        VStack {
            headerView()
            Button(action: {
                model.startTest()
            }, label: {
                Text("Start")
            })
            Spacer()
        }
    }
    
    @ViewBuilder
    func testView() -> some View {
        VStack {
            Text("Personality test")
               
            GeometryReader { geo in
                Text("Question")
            }
        }
    }
    
    @ViewBuilder
    func processingView() -> some View {
        
    }
    
    @ViewBuilder
    func resultView() -> some View {
        
    }
    
    @ViewBuilder
    func backButton() -> some View {
        BackButton(color: Theme.Colors.primary)
    }
    
    @ViewBuilder
    func headerView() -> some View {
        VStack(spacing: 24) {
            Text("Personality Test")
                .matchedGeometryEffect(id: "PersonalityTestText", in: animation)
        }
        .padding(.top, 32)
    }
}
