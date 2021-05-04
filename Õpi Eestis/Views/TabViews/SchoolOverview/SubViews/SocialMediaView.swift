import SwiftUI

struct SocialMediaView: View {
    
    @ObservedObject var presenter = SchoolViewPresenter()
    let school: School
    
    var body: some View {
        VStack(spacing: 0){
            
            HStack{
                ForEach(school.socialMedia, id: \.self) { item in
                    Button(action: { presenter.toSocialMedia(socialMedia: item) }) {
                        HStack{
                            VStack{
                                Image(item.website)
                                    .resizable()
                                    .scaledToFit()
                            }.frame(width: 35)
                        }
                        .foregroundColor(.white)
                        .padding(.horizontal, 15)
                    }
                }
            }.frame(maxWidth: .infinity)
            .padding(.vertical, 5)
            .background(Color.white)
            .foregroundColor(.black)
            .cornerRadius(5)
            .padding(.horizontal)
        }
    }
}
