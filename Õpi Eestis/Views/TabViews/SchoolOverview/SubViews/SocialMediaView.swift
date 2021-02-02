import SwiftUI

struct SocialMediaView: View {
    
    let school: School
    
    
    var body: some View {
        VStack(spacing: 10){
            Spacer()
            LabelledDivider2(label: "Meedia")
//            Divider().background(Color.black)
            HStack{
                ForEach(school.socialMedia, id: \.self) { item in
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
                    }
                }
            }
        }.padding(.vertical, 40)
        .foregroundColor(Color.black)
        .background(LinearGradient(gradient: .whiteToDim, startPoint: .bottom, endPoint: .top))
    }
}
