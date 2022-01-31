import SwiftUI

struct SocialMediaView: View {
    let school: School
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Header(type: .socialMedia, school: school)
            
            VStack(spacing: 12){
                ForEach(school.socialMedia, id: \.self) { item in
                    Button(action: { school.toSocialMedia(socialMedia: item) }) {
                        HStack{
                            Image(item.website.rawValue)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25, alignment: .leading)
                            Text(item.website.rawValue)
                                .font(.regularSubHeadline)
                            Spacer()
                            Chevron(type: .link)
                        }
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 25)
        .foregroundColor(.black)
    }
}

