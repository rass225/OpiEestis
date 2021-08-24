import SwiftUI

struct MajorNavigationLink<Destination: View>: View  {
    
    let image: Image
    let label: String
    var destination: () -> Destination
    let color: Color
    
    var body: some View {
        VStack(spacing: 0){
            NavigationLink(destination: destination()){
                ZStack{
                    HStack{
                        image
                            .font(.semiBoldTitle2)
                            .frame(width: 35)
                        Spacer()
                    }
                    Text(label).font(.regularCallout)
                }.foregroundColor(.white)
                .padding(.leading, 25)
                .padding(.trailing, 10)
                .frame(minHeight: 0, maxHeight: 60)
                .background(color)
                .cornerRadius(7)
                .padding(.bottom, 8)
                .padding(.horizontal, 20)
            }
        }
    }
}
