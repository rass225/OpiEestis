import SwiftUI

struct SchoolImageView: View {
    
    @State private var draggedEffect = CGSize.zero
    @State private var dragzoom = CGSize.zero
    let passedSchool: School
    
    var body: some View {
        ZStack(alignment: .top){
            Color.customBlue
            VStack{
                ZStack{
                    Image(passedSchool.image)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width + (dragzoom.height * 1.5), height: pictureFunc() + dragzoom.height)
                        .padding([.leading, .trailing], 1)
                    if passedSchool.vastuvõtt[0] != "" {
                        VStack{
                            Spacer()
                                VStack(alignment: .leading){
                                    Text("Vastuvõtt")
                                        .font(Font.body.weight(.regular))
                                    Text(passedSchool.vastuvõtt[0])
                                    if passedSchool.vastuvõtt.count > 1 {
                                        Text(passedSchool.vastuvõtt[1])
                                    }
                                }.offset(x: UIScreen.main.bounds.width / 4.14 + 20, y: 0)
                                .shadow(color: Color.black, radius: 8, x: 0, y: 0)
                                .font(Font.body.weight(.regular))
                                .padding(.horizontal, 20)
                                .padding(.bottom, 10)
                                
                            
                        }.foregroundColor(Color.white)
                    }
                }
            }
            .cornerRadiusCustom(customCornerRadiusFunc(), corners: [.bottomLeft, .bottomRight])
            .shadow(color: Color.black.opacity(0.9), radius: 12, x: 0, y: 3)
            .background(Color.customBlue)
            .offset(x: 0, y: -2 + (dragzoom.height / 2))
            
            VStack{
                Button(action:{
                    guard let url = URL(string: passedSchool.website as String) else { return }
                    UIApplication.shared.open(url)
                }) {
                    VStack{
                        Image(passedSchool.logo)
                            .resizable()
                            .padding()
                            .scaledToFit()
                            .accentColor(.white)
                    }
                    .foregroundColor(.black)
                    .frame(width: CustomLogoSize(), height: CustomLogoSize())
                    .cornerRadius(CustomLogoSize())
                    .background(DarkBackground2(shape: RoundedRectangle(cornerRadius:  (CustomLogoSize()))))
                    .frame(width: UIScreen.main.bounds.width, height: tabViewPicSize())
                    .offset(x: 0, y: tabViewPicSize() / 2 + (dragzoom.height + (dragzoom.height / 2)))
                }.buttonStyle(MyButtonStyle())
            }.shadow(color: Color.black.opacity(0.5), radius: 8, x: 0, y: 0)
        }.frame(width: UIScreen.main.bounds.width + 2, height: tabViewPicSize() + 3)
        .gesture(DragGesture()
                    .onChanged { value in
                        if value.translation.height > 0 && value.translation.height < UIScreen.main.bounds.height / 3 {
                            dragzoom = value.translation
                        }
                    }
                    .onEnded { value in
                        dragzoom = CGSize.zero
                    }
        )
        .animation(.easeInOut)
    }
    
    func tabViewPicSize() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        if screenHeight > 900 {
            customHeight = screenHeight / 2.7
        } else {
            customHeight = screenHeight / 3
        }
        
        return customHeight
    }
    
    func CustomLogoSize() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        let screenWidth = UIScreen.main.bounds.width
        if screenHeight > 900 {
            customHeight = screenWidth / 6
        }
        else {
            customHeight = screenWidth / 4.14
        }
        
        return customHeight
    }
    
    func customCornerRadiusFunc() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        if screenHeight > 900 {
            customHeight = 70
        } else {
            customHeight = 35
        }
        
        return customHeight
    }
    
    func pictureFunc() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        if screenHeight > 900 {
            customHeight = screenHeight / 100 * 35
        }
        else {
            customHeight = screenHeight / 100 * 35
        }
        
        return customHeight
    }
    
    func headerSize() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        let screenWidth = UIScreen.main.bounds.width
        if screenHeight > 900 {
            customHeight = screenWidth / 32
        }
        else {
            customHeight = screenWidth / 26
        }
        
        return customHeight
    }
}
