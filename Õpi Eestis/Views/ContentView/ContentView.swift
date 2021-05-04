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
                        NavigationLink(destination: presenter.navigateToSchoolList()) {
                            VStack{
                                Text("Vaata").padding(.bottom, 2)
                                Text("ülikoole")
                            }
                            .frame(width: 150, height: 150)
                            .foregroundColor(.black)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.whiteDim, Color.white]), startPoint: .topLeading, endPoint: .center))
                            .cornerRadius(150)
                            .shadow(color: Color.black.opacity(0.15), radius: 4, x: 5, y: 5)
                            .shadow(color: Color.white.opacity(1), radius: 10, x: -11, y: -11)
                            .font(.regularBody)
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
