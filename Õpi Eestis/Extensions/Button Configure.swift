//
//  Button Configure.swift
//  Estonian Universities
//
//  Created by Rasmus Tauts on 12.05.2020.
//  Copyright © 2020 Rasmus Tauts. All rights reserved.
//


import Foundation
import SwiftUI


extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .leading, endPoint: .trailing)
        
    }
}



struct ButtonModifier: ViewModifier{
    let customWidth = UIScreen.main.bounds.width / 1.5
    let customHeight = UIScreen.main.bounds.width / 6.5
    
    func body(content: Content) -> some View {
        return content
            .background(RadialGradient(gradient: Gradient(colors: [Color.init(red: 180/255, green: 80/255, blue: 255/255), Color.init(red: 100/255, green: 100/255, blue: 255/255)]), center: .bottomLeading, startRadius: 20, endRadius: 200))
            .foregroundColor(Color.white)
            .font(.system(size: UIScreen.main.bounds.width / 22, weight: .light))
            .frame(width: customWidth, height: customHeight)
            .cornerRadius(12)
            
        
            
        .shadow(radius: 3)
        
    }
}

struct DarkBackground2<S: Shape>: View {
    
    var shape: S

    var body: some View {
        ZStack {
            shape
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 0)
        }
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadiusCustom(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
        
        
    }
}

struct MyButtonStyle: ButtonStyle {
   
    public func makeBody(configuration: MyButtonStyle.Configuration) -> some View {
        
        configuration.label
            .compositingGroup()
            .opacity(configuration.isPressed ? 0.5 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
        .animation(.default)
            
    }
}

struct DarkButtonStyle3: ButtonStyle {
    
    func customBigButton() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        let screenWidth = UIScreen.main.bounds.width
        if screenHeight > 900 {
            customHeight = screenWidth / 7
        } else {
            customHeight = screenWidth / 4.5
        }
        
        
        return customHeight
    }
    
    
    
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
           
            .frame(width: self.customBigButton(), height: self.customBigButton())
            //.padding()
            .contentShape(RoundedRectangle(cornerRadius: self.customBigButton() ))
            .foregroundColor(Color.white)
            .background(DarkBackground2(shape: RoundedRectangle(cornerRadius:  self.customBigButton() )))
            .compositingGroup()
            .opacity(configuration.isPressed ? 0.5 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
            .animation(.default)
        
            //.animation(nil)
    }
}



final class HostingController<T: View>: UIHostingController<T> {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
}

struct DarkButtonStyle4: ButtonStyle {
    
    func CustomWidth() -> CGFloat {
        var customWidth: CGFloat = 0
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        if screenHeight > 900 {
            customWidth = screenWidth / 2
        } else {
            customWidth = screenWidth / 1.5
        }
        
        return customWidth
    }
    func CustomHeight() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        if screenHeight > 900 {
            customHeight = screenWidth / 15
        } else {
            customHeight = screenWidth / 9
        }
        
        return customHeight
    }
    func customCornerRadiusFunc() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        let screenWidth = UIScreen.main.bounds.width
        if screenHeight > 900 {
            customHeight = (screenWidth / 4) / 12
        } else {
            customHeight = (screenWidth / 4) / 8
        }
        return customHeight
    }
    
    
    
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(30)
            .frame(width: self.CustomWidth(), height: self.CustomHeight())
            .contentShape(RoundedRectangle(cornerRadius: self.customCornerRadiusFunc()))
            .foregroundColor(Color.black)
            .background(
                DarkBackground2(shape: RoundedRectangle(cornerRadius: self.customCornerRadiusFunc()))
            )
            .compositingGroup()
            .opacity(configuration.isPressed ? 0.5 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
            //.animation(nil)
    }
}
struct ButtonModifier2: ViewModifier{
    
    var customWidth = (UIScreen.main.bounds.width / 3) + 20
    func body(content: Content) -> some View {
        return content
            .padding(5)
            .frame(width: customWidth)
            .background(Color.customBlue)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.2), radius: 6, x: 7, y: 7)
        
        
    }
}
struct ButtonModifier3: ViewModifier{
    
    var customWidth = UIScreen.main.bounds.width - 40
    func body(content: Content) -> some View {
        return content
            .padding(5)
            .frame(width: customWidth)
            .background(Color.customBlue)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 0)
            .foregroundColor(Color.black)
        
    }
}

struct DarkButtonStyle5: ButtonStyle {
    
    let customWidth = UIScreen.main.bounds.width / 1.5
    let customHeight = UIScreen.main.bounds.width / 7
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(30)
             .frame(width: customWidth, height: customHeight)
            .contentShape(RoundedRectangle(cornerRadius: (UIScreen.main.bounds.width / 4) / 7))
            .foregroundColor(Color.black)
            .background(
                DarkBackground2(shape: RoundedRectangle(cornerRadius: (UIScreen.main.bounds.width / 4) / 7))
            )
            .compositingGroup()
            .opacity(configuration.isPressed ? 0.5 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
            //.animation(nil)
    }
}

struct copyTextStyle: ButtonStyle {
    
    
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: UIScreen.main.bounds.height / 35, height: UIScreen.main.bounds.height / 35)
            .background(Color.white)
            .cornerRadius(UIScreen.main.bounds.height / 35 / 2)
            .shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 0)
            .compositingGroup()
                .opacity(configuration.isPressed ? 0.5 : 1.0)
                .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
            .animation(.default)
            .foregroundColor(Color.black)
            .font(.system(size: UIScreen.main.bounds.width / 24, weight: .regular))
    }
}

struct contactButtonStyle: ButtonStyle {
    
    func customBigButton() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        let screenWidth = UIScreen.main.bounds.width
        if screenHeight > 900 {
            customHeight = screenWidth / 7
        } else {
            customHeight = screenWidth / 5
        }
        
        
        return customHeight
    }
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: self.customBigButton(), height: self.customBigButton())
            .background(Color.white)
            .cornerRadius(self.customBigButton())
            .padding(.trailing, 35)
            .shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 0)
        .compositingGroup()
            .opacity(configuration.isPressed ? 0.5 : 1.0)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
        .animation(.default)
            .foregroundColor(Color.black)
    }
}

struct StudyLevelButtonModifier: ViewModifier{
    
    @State var backgroundColor = LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black, Color.white]), startPoint: .top, endPoint: .bottom)
    
    func body(content: Content) -> some View {
        return content
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 25, maxHeight: .infinity)
        .font(.custom("Roboto", size: 25))
        .accentColor(.white)
        .background(backgroundColor)
    }
}
