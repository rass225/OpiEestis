import SwiftUI

struct SocialMediaView: View {
    
    let school: School
    
    var body: some View {
        VStack(spacing: 0){
            Spacer()
            HStack{
                ForEach(school.socialMedia, id: \.self) { item in
                    Button(action: { toSocialMedia(socialMedia: item) }) {
                        MajorButtonCustomImage(image: item.website, label: item.website)
                    }
                }
            }.frame(maxWidth: .infinity)
        }.padding(.bottom, 40)
        .foregroundColor(.black)
        .background(Color.white)
    }
    
    func toSocialMedia(socialMedia: SocialMedia) {
        if school.website == "Facebook" {
            let appURL = NSURL(string: "fb://profile/\(socialMedia.link)")!
            UIApplication.shared.open(appURL as URL)
        } else {
            guard let url = URL(string: socialMedia.link as String) else { return }
            UIApplication.shared.open(url)
        }
    }
}
