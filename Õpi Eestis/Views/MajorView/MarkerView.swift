import SwiftUI
import Foundation

struct MarkerView: View {
    
    let color: Color
    let logo: String
    
    var body: some View {
        ZStack(alignment: .top) {
            pinShape()
                .fill(color.gradient)
            Image(logo)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .background(Color.white)
                .clipShape(Circle())
                .padding(5)
        }
    }
    
    @ViewBuilder private func pinShape() -> some Shape {
        Path { path in
            let bodyWidth: CGFloat = 50
            let bodyHeight: CGFloat = 60
            let tipHeight: CGFloat = 10
            let cornerRadius: CGFloat = 15
            
            path.move(to: CGPoint(x: 0, y: cornerRadius))
            
            // Top-left corner
            path.addArc(
                center: CGPoint(
                    x: cornerRadius,
                    y: cornerRadius
                ),
                radius: cornerRadius,
                startAngle: .degrees(180),
                endAngle: .degrees(270),
                clockwise: false
            )
            
            // Top-right corner
            path.addLine(to: CGPoint(
                x: bodyWidth - cornerRadius,
                y: 0
            ))
            path.addArc(
                center: CGPoint(
                    x: bodyWidth - cornerRadius,
                    y: cornerRadius
                ),
                radius: cornerRadius,
                startAngle: .degrees(270),
                endAngle: .degrees(360),
                clockwise: false
            )
            
            // Bottom-right of the body
            path.addLine(to: CGPoint(
                x: bodyWidth,
                y: bodyHeight - cornerRadius
            ))
            path.addArc(
                center: CGPoint(
                    x: bodyWidth - cornerRadius,
                    y: bodyHeight - cornerRadius
                ),
                radius: cornerRadius,
                startAngle: .degrees(0),
                endAngle: .degrees(90),
                clockwise: false
            )
            
            // Connecting body to the triangle tip
            path.addLine(to: CGPoint(
                x: bodyWidth/2 + tipHeight,
                y: bodyHeight
            ))
            
            // Triangle tip
            path.addLine(to: CGPoint(
                x: bodyWidth/2,
                y: bodyHeight + tipHeight
            ))
            path.addLine(to: CGPoint(
                x: bodyWidth/2 - tipHeight,
                y: bodyHeight
            ))
            
            // Bottom-left of the body
            path.addLine(to: CGPoint(
                x: cornerRadius,
                y: bodyHeight
            ))
            path.addArc(
                center: CGPoint(
                    x: cornerRadius,
                    y: bodyHeight - cornerRadius
                ),
                radius: cornerRadius,
                startAngle: .degrees(90),
                endAngle: .degrees(180),
                clockwise: false
            )
            
            path.closeSubpath()
        }
    }
}

struct LittleMarkerView: View {
    
    let color: Color
    let logo: String
    
    var body: some View {
        ZStack(alignment: .top) {
            pinShape()
                .fill(color.gradient)
            Image(logo)
                .resizable()
                .fit()
                .frame(width: 23, height: 23)
//                .padding(1)
                .background(Color.white)
                .clipShape(Circle())
                .padding(3)
                .padding(.top, 0.5)
                .padding(.leading, 0.5)
        }
    }
    
    @ViewBuilder private func pinShape() -> some Shape {
        Path { path in
            let bodyWidth: CGFloat = 30
            let bodyHeight: CGFloat = 36
            let tipHeight: CGFloat = 6
            let cornerRadius: CGFloat = 9
            let triangleWidthOffset: CGFloat = 6 // Increase this value for a wider triangle
            
            path.move(to: CGPoint(x: 0, y: cornerRadius))
            
            // Top-left corner
            path.addArc(center: CGPoint(x: cornerRadius, y: cornerRadius), radius: cornerRadius, startAngle: .degrees(180), endAngle: .degrees(270), clockwise: false)
            
            // Top-right corner
            path.addLine(to: CGPoint(x: bodyWidth - cornerRadius, y: 0))
            path.addArc(center: CGPoint(x: bodyWidth - cornerRadius, y: cornerRadius), radius: cornerRadius, startAngle: .degrees(270), endAngle: .degrees(360), clockwise: false)
            
            // Bottom-right of the body
            path.addLine(to: CGPoint(x: bodyWidth, y: bodyHeight - cornerRadius))
            path.addArc(center: CGPoint(x: bodyWidth - cornerRadius, y: bodyHeight - cornerRadius), radius: cornerRadius, startAngle: .degrees(0), endAngle: .degrees(90), clockwise: false)
            
            // Connecting body to the triangle tip (Right side)
            path.addLine(to: CGPoint(x: bodyWidth/2 + triangleWidthOffset, y: bodyHeight))
            
            // Triangle tip
            path.addLine(to: CGPoint(x: bodyWidth/2, y: bodyHeight + tipHeight))
            path.addLine(to: CGPoint(x: bodyWidth/2 - triangleWidthOffset, y: bodyHeight))
            
            // Connecting body to the triangle tip (Left side)
            path.addLine(to: CGPoint(x: cornerRadius, y: bodyHeight))
            path.addArc(center: CGPoint(x: cornerRadius, y: bodyHeight - cornerRadius), radius: cornerRadius, startAngle: .degrees(90), endAngle: .degrees(180), clockwise: false)
            
            path.closeSubpath()
        }
    }
}

struct CollegePin: View {
    
    let college: College
    private let dependecies: DependencyManager = .shared
    let image: UIImage
    
    var body: some View {
        ZStack{
            rainDrop()
                .setColor(college.palette.base)
                .offset(x: 8, y: 43)
            ZStack{
                Circle()
                    .frame(width: 50, height: 50)
                    .setColor(college.palette.base.gradient)
                Circle()
                    .frame(width: 45, height: 45)
                    .setColor(Color.white)
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
            }
        }
    }
    
    @ViewBuilder
    private func rainDrop() -> some Shape {
        Path { path in
            path.addLines([
                CGPoint(x: 0, y: 0),
                CGPoint(x: 33, y: 0),
                CGPoint(x: 16.5, y: 15)
            ])
        }
    }
}
