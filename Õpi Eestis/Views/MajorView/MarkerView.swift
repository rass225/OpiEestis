import SwiftUI
import Foundation

struct MarkerView: View {
    
    let color: Color
    let logo: String
    let pinHeight: CGFloat
    let pinWidth: CGFloat
    
    init(
        color: Color,
        logo: String,
        pinHeight: CGFloat = 48,
        pinWidth: CGFloat = 40
    ) {
        self.color = color
        self.logo = logo
        self.pinHeight = pinHeight
        self.pinWidth = pinWidth
    }
    
    var body: some View {
        pinShape(width: pinWidth, height: pinHeight)
            .fill(color.gradient)
            .frame(width: pinWidth, height: pinHeight)
            .overlay(alignment: .top) {
                Circle()
                    .fill(Color.white)
                    .overlay {
                        Image(logo)
                            .resizable()
                            .fit()
                            .padding(4)
                    }
                    .clipShape(Circle())
                    .padding(4)
            }
            .contentShape(Rectangle())
    }
    
    @ViewBuilder private func pinShape(width: CGFloat, height: CGFloat) -> some Shape {
        Path { path in
            let bodyWidth: CGFloat = width
            let bodyHeight: CGFloat = height
            let tipHeight: CGFloat = 10
            let cornerRadius: CGFloat = 11
            
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
    let height: CGFloat
    
    init(
        color: Color,
        logo: String,
        height: CGFloat = 23
    ) {
        self.color = color
        self.logo = logo
        self.height = height
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            pinShape()
                .fill(color.gradient)
                .frame(width: 30, height: 36)
                .overlay(alignment: .top) {
                    Circle()
                        .fill(Color.white)
                        .overlay {
                            Image(logo)
                                .resizable()
                                .fit()
                                .padding(2)
                        }
                        .clipShape(Circle())
                        .padding(3)
                }
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
