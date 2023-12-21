import SwiftUI

extension PathFinderView {
    struct ProcessingView: View {
        @State private var progress: CGFloat = 0
        private let totalTime = Double.random(in: 7.5...10)
        private let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
        
        let completion: () -> ()

        var body: some View {
            ZStack {
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(
                        Theme.Colors.primary.gradient,
                        style: StrokeStyle(lineWidth: 20, lineCap: .round)
                    )
                    .frame(width: 200, height: 200)
                    .rotationEffect(Angle(degrees: -90))
                    .animation(.default, value: progress)
                
                Text("\(Int(min(progress * 100, 100)))%")
                    .setFont(.largeTitle, .medium, .rounded)
            }
            .onReceive(timer) { _ in
                updateProgress()
            }
        }

        private func updateProgress() {
            let increment = 0.1 / totalTime
            if progress < 1 {
                progress += CGFloat(increment)
            } else {
                timer.upstream.connect().cancel()
                onComplete()
            }
        }

        private func onComplete() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
                completion()
            }
        }
    }
}
