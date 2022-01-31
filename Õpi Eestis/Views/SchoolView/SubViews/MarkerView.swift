import SwiftUI
import Foundation

struct MarkerView: View {
    
    let color: Color
    let logo: String
    
    var body: some View {
        ZStack{
            rainDrop()
                .foregroundColor(color)
                .offset(x: 6, y: 38)
            ZStack{
                Circle()
                    .frame(width: 45, height: 45)
                    .foregroundColor(color)
                Circle()
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color.white)
                Image(logo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 34, height: 34)
            }
        }
    }
    
    @ViewBuilder private func rainDrop() -> some Shape {
        Path { path in
            path.addLines([
                CGPoint(x: 0, y: 0),
                CGPoint(x: 33, y: 0),
                CGPoint(x: 16.5, y: 15)
            ])
        }
    }
}

struct littleMarker: View {
    let color: Color
    let logo: String
    
    var body: some View {
        ZStack{
            rainDrop()
                .foregroundColor(color)
                .offset(x: 6, y: 27)
            ZStack{
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(color)
                Circle()
                    .frame(width: 26, height: 26)
                    .foregroundColor(Color.white)
                Image(logo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 23, height: 23)
            }
        }
    }
    
    @ViewBuilder private func rainDrop() -> some Shape {
        Path { path in
            path.addLines([
                CGPoint(x: 0, y: 0),
                CGPoint(x: 18, y: 0),
                CGPoint(x: 9, y: 9)
            ])
        }
    }
}

