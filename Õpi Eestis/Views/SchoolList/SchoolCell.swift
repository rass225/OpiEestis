import SwiftUI

struct SchoolCell: View {
    let school: SchoolOverview
    
    var body: some View {
        HStack(alignment: .center, spacing: 0){
            Image(school.logo)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .padding(.leading, 7)
                .padding(.trailing, 10)
            VStack(alignment: .leading, spacing: 5){
                Text(school.name.rawValue)
                    .font(.semiBoldBody)
                    .frame(alignment: .leading)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.black)
                Text(school.city)
                    .font(.regularCaption)
                    .foregroundColor(.darkGray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top)
            .padding(.bottom)
        }
        .background(Color.white)
        .cornerRadius(12)
        .padding(.horizontal)
        .padding(.top, 10)
    }
}
