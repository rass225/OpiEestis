import SwiftUI

struct MajorNavigationLink<Destination: View>: View  {
    
    let image: String
    let label: String
    var destination: () -> Destination
    
    var body: some View {
        NavigationLink(destination: destination()){
            ZStack{
                HStack{
                    Image(systemName: image)
                        .font(.lightTitle)
                        .frame(width: 35)
                        .padding(.trailing, 25)
                    Spacer()
                    Image.chevronRight
                }
                Text(label).font(.regularCallout)
            }.foregroundColor(.black)
            .padding(.horizontal, 25)
            .frame(minHeight: 0, maxHeight: .infinity)
            .background(Color.whiteDim)
        }
    }
}
