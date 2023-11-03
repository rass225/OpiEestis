import SwiftUI

struct UnauthenticatedView: View {
    let title: String
    let action: () -> ()
    
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 0) {
                VStack(spacing: 24) {
                    Image("estonia2")
                        .resizable()
                        .fit()
                        .setColor(Theme.Colors.primary.gradient)
                        .frame(width: geo.size.width / 1.5)
                    Text("Õpi Eestis")
                        .setFont(.largeTitle, .semibold, .rounded)
                }.maxHeight()

                VStack(spacing: 24) {
                    Text(title)
                        .setFont(.title3, .regular, .rounded)
                    Button(action: action) {
                        SignInWithAppleButtonViewRepresentable(type: .default, style: .black)
                            .allowsHitTesting(false)
                    }
                    .padding(.horizontal, 32)
                    .frame(height: 55)
                }.maxHeight()
            }
            .maxSize()
        }
        .background(BackgroundView())
    }
}

extension UnauthenticatedView {
    struct BackgroundView: View {
        var body: some View {
            ZStack {
                // Gradient background
                LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue.opacity(0.8)]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)

                AnimatedWaves()
                                .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height * 0.8)
                // Patterns or symbols (here, I'm using circles as placeholders)
                ForEach(0..<20) { _ in
                    Circle()
                        .fill(Color.white.opacity(0.2))
                        .frame(width: CGFloat.random(in: 10...100), height: CGFloat.random(in: 10...100))
                        .position(x: CGFloat.random(in: 0...UIScreen.main.bounds.width), y: CGFloat.random(in: 0...UIScreen.main.bounds.height))
                }
                
            }
        }
    }
    
    struct Wave: Shape {
        var amplitude: CGFloat
        var phase: CGFloat
        
        var animatableData: CGFloat {
            get { phase }
            set { phase = newValue }
        }
        
        func path(in rect: CGRect) -> Path {
            var path = Path()
            for x in stride(from: 0, to: rect.width + 10, by: 10) {
                let relativeX = x / rect.width
                let sine = sin(relativeX * 2 * .pi + phase) * amplitude
                if x == 0 {
                    path.move(to: CGPoint(x: x, y: sine))
                } else {
                    path.addLine(to: CGPoint(x: x, y: sine))
                }
            }
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.closeSubpath()
            return path
        }
    }

    struct AnimatedWaves: View {
        @StateObject var model: Model = .init()
        
        var body: some View {
            Wave(amplitude: 20, phase: model.phase)
                .fill(Color.blue.opacity(0.2))
                .frame(height: 200)
                .offset(y: 100)
        }
    }
}

extension UnauthenticatedView.AnimatedWaves {
    class Model: ObservableObject {
        @Published var phase: CGFloat = 0

        init() {
            startAnimating()
        }

        func startAnimating() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                withAnimation(Animation.linear(duration: 5).repeatForever(autoreverses: false)) {
                    self.phase += 2 * .pi
                }
            }
        }
    }
}
