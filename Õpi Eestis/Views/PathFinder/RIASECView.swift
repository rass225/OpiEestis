import SwiftUI

struct RIASECModelView: View {
    var categories: [(category: String, result: CGFloat)]
    var axisLength: CGFloat = 300
    var circleRadius: CGFloat = 10
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.black, lineWidth: 1)
                .frame(width: axisLength, height: axisLength)
            
            ForEach(0..<categories.count) { index in
                let (category, result) = categories[index]
                let angle = Double(index) * (360 / Double(categories.count))
                let point = getPoint(from: result, angle: angle)
                
                Text(category)
                    .position(point)
                    .offset(x: 0, y: -15)
                
                Circle()
                    .fill(Color.red)
                    .frame(width: circleRadius * 2, height: circleRadius * 2)
                    .position(point)
            }
        }
    }
    
    func getPoint(from radius: CGFloat, angle: Double) -> CGPoint {
        let radians = CGFloat(angle / 180 * .pi)
        let x = axisLength / 2 + radius * cos(radians)
        let y = axisLength / 2 + radius * sin(radians)
        return CGPoint(x: x, y: y)
    }
}

struct RIASECModelView_Previews: PreviewProvider {
    static var previews: some View {
        RIASECModelView(categories: [
            ("Mathematics", 0.9),
            ("Music", 0.7),
            ("Art", 0.5),
            ("Physical Activity", 0.3),
            ("Indoor Activities", 0.1)
        ])
    }
}
