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
                        .frame(width: presenter.size.width)
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
                                                    .shadow(color: Color.black.opacity(0.4), radius: 3, x: 0, y: 5)
                                                    .shadow(color: Color.black.opacity(0.4), radius: 3, x: 0, y: -5)
                                                    .shadow(color: Color.black.opacity(0.4), radius: 3, x: 5, y: 0)
                                                    .shadow(color: Color.black.opacity(0.4), radius: 3, x: -5, y: 0)
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
                    .frame(maxWidth: .infinity, minHeight: 0, maxHeight: presenter.size.thirdHeight)
                    .padding(.bottom, 10)
                }
            }
            .navigationBarItems(
                leading: HStack{
                    Image.appLogo
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                    Text("Õpi Eestis")
                },
                trailing:
                    NavigationLink(destination: presenter.navigateToAbout()) {
                        Image.infoCircle
                            .font(.regularTitle2)
                            .foregroundColor(.black)
                    })
        }
    }
}
