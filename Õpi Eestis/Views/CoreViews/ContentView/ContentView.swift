import SwiftUI

struct ContentView: View {
    @ObservedObject var presenter = ContentViewPresenter()
    
    var body: some View {
        NavigationView {
            ZStack{
                WhiteBackground()
                VStack{
                    Image.appLogo
                        .resizable()
                        .scaledToFit()
                        .frame(width: Size.width)
                        .background(Color.white)
                        
                    Spacer()
                    Spacer()
                    VStack{
                        ZStack{
                            Circle()
                                .strokeBorder(Color.whiteDim2, lineWidth: 15)
                                .frame(width: 170)
                            NavigationLink(destination: presenter.navigateToSchoolList()) {
                                ZStack{
                                    Circle()
                                        .fill(Color.customBlue)
                                        .frame(width: 155)
                                        .overlay(
                                                Circle().strokeBorder(Color.whiteDim2, lineWidth: 1)
                                                    
                                        ).foregroundColor(Color.red)
                                    Text("Vaata ülikoole")
                                        .font(.regularBody)
                                        .foregroundColor(.white)
                                }
                            }
                            Circle()
                                .strokeBorder(Color.whiteDim2, lineWidth: 15)
                                .frame(width: 170)
                        }
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, minHeight: 0, maxHeight: Size.thirdHeight)
                    .padding(.bottom, 10)
                }
            }
        }
    }
}
