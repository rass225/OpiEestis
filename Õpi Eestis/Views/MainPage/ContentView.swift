import SwiftUI

struct ContentView: View {
    @State private var navigationSelectionTag: Int? = 0
    let logo = "Õpi Eestis logo"
    let screenWidth = UIScreen.main.bounds.width
    var body: some View {
        NavigationView {
            ZStack{
                NavigationLink(destination: AboutView(), tag: 1, selection: $navigationSelectionTag) { EmptyView() }
                NavigationLink(destination: SchoolListView(), tag: 2, selection: $navigationSelectionTag) { EmptyView() }
                LinearGradient.dimToWhiteGradient.edgesIgnoringSafeArea(.all)
                VStack{
                    Spacer()
                    Image(logo)
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .frame(width: screenWidth)
                        .background(Color.whiteDim1)
                    Spacer()
                    Spacer()
                    VStack{
                        Button(action: { navigationSelectionTag = 2 }) {
                            VStack{
                                Text("Vaata").padding(.bottom, 2)
                                Text("ülikoole")
                            }
                            .frame(width: 150, height: 150)
                            .foregroundColor(Color.black)
                            .background(Color.white)
                            .cornerRadius(150)
                            .shadow(color: Color.black.opacity(0.4), radius: 8, x: 0, y: 0)
                            .font(.regularCallout)
                        }
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 2.5)
                    .padding(.bottom, 10)
                }
            }
//            .navigationBarHidden(true)
            .navigationBarItems(
                trailing:
                    HStack{
                        Button(action: { navigationSelectionTag = 1 }) {
                            Image(systemName: "info.circle")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .font(.system(size: 20, weight: .medium))
                                .foregroundColor(Color.black)
                        }
                        NavigationLink(destination: DiscoveryView()) {
                                /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
                        }
                    })
        }
    }
}
