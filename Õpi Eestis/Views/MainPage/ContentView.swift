import SwiftUI

struct ContentView: View {
    @State private var navigationSelectionTag: Int? = 0
    let size = SizeObject()
    var body: some View {
        NavigationView {
            ZStack{
                NavigationLink(destination: AboutView(), tag: 1, selection: $navigationSelectionTag) { EmptyView() }
                NavigationLink(destination: SchoolListView(), tag: 2, selection: $navigationSelectionTag) { EmptyView() }
                WhiteBackground()
                VStack{
                    Spacer()
                    Image.appLogo
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .frame(width: size.width)
                        .background(Color.white)
                    Spacer()
                    Spacer()
                    VStack{
                        Button(action: { navigationSelectionTag = 2 }) {
                            VStack{
                                Text("Vaata").padding(.bottom, 2)
                                Text("ülikoole")
                            }
                            .frame(width: 150, height: 150)
                            .foregroundColor(.black)
                            .background(Color.whiteDim)
                            .cornerRadius(150)
                            .shadow(color: Color.black.opacity(0.2), radius: 7, x: 8, y: 8)
                            .shadow(color: Color.white.opacity(1), radius: 7, x: -8, y: -8)
                            .font(.regularCallout)
                        }
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, minHeight: 0, maxHeight: size.thirdHeight)
                    .padding(.bottom, 10)
                }
            }
            .navigationBarItems(
                trailing:
                    HStack{
                        Button(action: { navigationSelectionTag = 1 }) {
                            Image.infoCircle
                                .resizable()
                                .frame(width: 25, height: 25)
                                .font(.lightTitle)
                                .foregroundColor(.black)
                        }
                    })
        }
    }
}
