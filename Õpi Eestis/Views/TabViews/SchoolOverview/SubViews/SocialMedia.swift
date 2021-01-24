import SwiftUI

struct SocialMediaView: View {
    
    @State var socialMedia: [SocialMedia]
    var body: some View {
        VStack(spacing: 0){
            ForEach(socialMedia, id: \.self) { item in
                Button(action: {
                    if item.website == "Facebook" {
                        let appURL = NSURL(string: "fb://profile/\(item.link)")!
                        UIApplication.shared.open(appURL as URL)
                    } else {
                        guard let url = URL(string: item.link as String) else { return }
                        UIApplication.shared.open(url)
                    }
                }) {
                    MajorButtonCustomImage(image: item.website, label: item.website)
                        .frame(height: 70)
                        .background(Color.black.opacity(0.3))
//                    SocialMediaButton(website: item.website)
                }
                Divider()
            }
        }.environment(\.colorScheme, .light)
    }
}
//                    Spacer()
//
//                    ScrollView {
//                        Text("\(passedSchools.description)")
//                            .font(.system(size: headerSize(), weight: .light))
//                            .frame(width: UIScreen.main.bounds.width - 40)
//
//                        VStack{
//                            Text("s")
//                            Text("s")
//                            Text("s")
//                            Text("s")
//                            Text("s")
//                            Text("s")
//                        }.foregroundColor(.clear)
//                    }
//                    .frame(minWidth: 0, maxWidth: .infinity)
//                    .foregroundColor(Color.black.opacity(1))
//                    .padding(.trailing, 2)
//                    .lineSpacing(4)
//
//                }
//                .padding(.horizontal, 20)
//                .mask(LinearGradient(gradient: Gradient(stops: [
//                    .init(color: .clear, location: 0),
//                    .init(color: .clear, location: 0.05),
//                    .init(color: .black, location: 0.15),
//                    .init(color: .black, location: 1)
//                ]), startPoint: .top, endPoint: .bottom))
