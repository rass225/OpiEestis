import SwiftUI

struct MajorNavigationLink<Destination: View>: View  {
    
    let image: Image
    let label: String
    var destination: () -> Destination
    
    var body: some View {
        VStack(spacing: 0){
            NavigationLink(destination: destination()){
                ZStack{
                    HStack{
                        image
                            .font(.regularTitle3)
                            .frame(width: 35)
                        Spacer()
                    }
                    Text(label).font(.regularCallout)
                }.foregroundColor(.black)
                .padding(.leading, 25)
                .padding(.trailing, 10)
                .frame(minHeight: 0, maxHeight: 60)
                .background(Color.white)
                .cornerRadius(7)
                .padding(.top, 8)
                .padding(.horizontal, 20)
            }
        }
    }
}
