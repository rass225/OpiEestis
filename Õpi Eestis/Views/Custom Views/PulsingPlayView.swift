import SwiftUI

struct PulsingPlayView: View {
    @StateObject private var model = Model()
    let color: Color

    var body: some View {
        Image(systemName: "circle")
            .resizable()
            .scaleEffect(model.isPulsing ? 1.3 : 0.7)
            .opacity(model.isPulsing ? 0.0 : 1.0)
            .foregroundColor(color)
            .overlay(content: playButton)
    }
    
    @ViewBuilder
    func playButton() -> some View {
        Image(systemName: "play.circle.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 20, height: 20)
            .foregroundColor(color)
    }
}

extension PulsingPlayView {
    class Model: ObservableObject {
        @Published var isPulsing = false

        init() {
            startPulsing()
        }

        func startPulsing() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                withAnimation(Animation.easeInOut(duration: 1.6).repeatForever(autoreverses: false)) {
                    self.isPulsing.toggle()
                }
            }
        }
    }
}
