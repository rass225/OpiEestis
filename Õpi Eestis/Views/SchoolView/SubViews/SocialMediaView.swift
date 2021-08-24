import SwiftUI

struct SocialMediaView: View {
    let socialMedia: [SocialMedia]
    
    var body: some View {
        HStack{
            ForEach(socialMedia, id: \.self) { item in
                Button(action: { toSocialMedia(socialMedia: item) }) {
                    SocialMediaLogo(image: item.website.rawValue)
                }
            }
        }.frame(maxWidth: .infinity)
        .padding(.vertical, 10)
        .background(Color.white)
        .cornerRadius(12)
        .miniShadow()
        .padding(.horizontal)
        .padding(.top)
        
        
    }
    
    func toSocialMedia(socialMedia: SocialMedia) {
        switch socialMedia.website {
        case .facebook:
            let appURL = NSURL(string: Locale.network.fbHttps + socialMedia.link)!
            UIApplication.shared.open(appURL as URL)
        default:
            guard let url = URL(string: socialMedia.link as String) else { return }
            UIApplication.shared.open(url)
        }
    }
}

private struct SocialMediaLogo: View {
    let image: String
    
    var body : some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .frame(width: 40)
            .foregroundColor(.white)
            .padding(.horizontal, 15)
    }
}
