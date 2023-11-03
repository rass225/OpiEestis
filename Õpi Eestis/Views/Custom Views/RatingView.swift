import SwiftUI

struct RatingView: View {
    let fillColor: Color
    @State private var rating: Int = 0
    @GestureState private var dragAmount: CGFloat = 0.0
    
    var body: some View {
        HStack(spacing: 10) {
            ForEach(1...5, id: \.self) { star in
                Star(
                    isFilled: star <= rating,
                    animationValue: rating, 
                    fillColor: fillColor
                )
                .onTapGesture {
                    withAnimation {
                        rating = star
                    }
                }
            }
        }
        .gesture(
            DragGesture(minimumDistance: 1)
                .updating($dragAmount, body: { (value, state, transaction) in
                    let starWidth = value.startLocation.x + value.translation.width
                    let newRating = Int(starWidth / 40)
                    if (1...5).contains(newRating) {
                        DispatchQueue.main.async {
                            rating = newRating
                        }
                        
                    }
                })
        )
    }
}

extension RatingView {
    struct Star: View {
        var isFilled: Bool
        var animationValue: Int
        let fillColor: Color
        
        var body: some View {
            Image(systemName: isFilled ? "star.fill" : "star")
                .modifier(FilledStarModifier(isFilled: isFilled, fillColor: fillColor))
                .setFont(.title2, .regular, .rounded)
                .animation(.easeInOut(duration: 0.3), value: animationValue)
        }
    }
    
    struct FilledStarModifier: ViewModifier {
        let isFilled: Bool
        let fillColor: Color
        
        func body(content: Content) -> some View {
            if isFilled {
                content
                    .setColor(fillColor.gradient)
            } else {
                content
                    .setColor(Theme.Colors.secondaryGray)
            }
        }
    }
}
