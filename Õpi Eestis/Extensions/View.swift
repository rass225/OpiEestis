import Foundation
import SwiftUI

extension View {
    
    func ignoreEdges(edge: Edge.Set) -> some View {
        return self
            .edgesIgnoringSafeArea(edge)
    }
    
    func defaultShadow(color: Color, radius: CGFloat) -> some View {
        return self
            .shadow(color: color, radius: radius, x: 0.0, y: 0.0)
    }
    
    func cornerRadiusCustom(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
    
    func miniShadow() -> some View {
        self
            .shadow(color: Color.black.opacity(0.09), radius: 1, x: 0, y: 2)
    }
    
    func defaultShadow() -> some View {
        self
            .shadow(color: Color.black.opacity(0.3), radius: 4, x: 0, y: 2)
    }
    
    func snapshot() -> UIImage {
        let controller = UIHostingController(rootView: self)

        let view = controller.view

        let targetSize = controller.sizeThatFits(in: UIScreen.main.bounds.size)
        view?.bounds = CGRect(origin: .zero, size: targetSize)
        view?.backgroundColor = .clear

        let renderer = UIGraphicsImageRenderer(size: targetSize)

        return renderer.image { _ in
            view?.drawHierarchy(in: controller.view.bounds, afterScreenUpdates: true)
        }
    }
    
    func asImage(size: CGSize) -> UIImage {
        let controller = UIHostingController(rootView: self)
        controller.view.frame = CGRect(origin: .zero, size: size)
        controller.view.backgroundColor = .clear
        
        let renderer = UIGraphicsImageRenderer(size: size)
        return renderer.image { _ in
            controller.view.drawHierarchy(in: controller.view.bounds, afterScreenUpdates: true)
        }
    }
    
    func setColor(_ color: Color) -> some View {
        return self
            .foregroundColor(color)
    }
    
    func setColor<S1, S2, S3>(_ primary: S1, _ secondary: S2, _ tertiary: S3) -> some View where S1 : ShapeStyle, S2 : ShapeStyle, S3 : ShapeStyle {
        return self
            .foregroundStyle(primary, secondary, tertiary)
    }
    
    func setColor<S1, S2>(_ primary: S1, _ secondary: S2) -> some View where S1 : ShapeStyle, S2 : ShapeStyle {
        return self
            .foregroundStyle(primary, secondary)
    }
    
    func setColor<S1>(_ primary: S1) -> some View where S1 : ShapeStyle {
        return self
            .foregroundStyle(primary)
    }
    
    func fit() -> some View {
        return self
            .aspectRatio(contentMode: .fit)
    }
    
    func fill() -> some View {
        return self
            .aspectRatio(contentMode: .fill)
    }
    
    func maxWidth(alignment: Alignment = .center) -> some View {
        return self
            .frame(maxWidth: .infinity, alignment: alignment)
    }
    
    func maxSize(alignment: Alignment = .center) -> some View {
        return self
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: alignment)
    }
    
    func maxHeight(alignment: Alignment = .center) -> some View {
        return self
            .frame(maxHeight: .infinity, alignment: alignment)
    }
    
    func setFont(_ font: Font, _ fontWeight: Font.Weight, _ fontDesign: Font.Design) -> some View {
        return self
            .font(font)
            .fontWeight(fontWeight)
            .fontDesign(fontDesign)
    }
    
    func setSymbol(_ variant: SymbolVariants, _ renderMode: SymbolRenderingMode = .monochrome) -> some View {
        self
            .symbolVariant(variant)
            .symbolRenderingMode(renderMode)
    }
    
    func smoothCorners(radius: CGFloat = 8, color: Color = .clear) -> some View {
        return self
            .background(color)
            .clipShape(RoundedRectangle(cornerRadius: radius, style: .continuous))
    }
    
    func endEditing() {
        UIApplication.shared.connectedScenes
            .filter { $0.activationState == .foregroundActive }
            .map { $0 as? UIWindowScene }
            .compactMap { $0 }
            .first?.windows
            .filter { $0.isKeyWindow }
            .first?.endEditing(true)
    }
}
