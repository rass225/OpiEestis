import SwiftUI

struct SchoolImage: View {
    let school: School
    @State var index = 0
    var body: some View {
        PagingView(index: $index.animation(), maxIndex: school.imageUrls.count) {
            Image(school.image.rawValue)
                .resizable()
                .frame(width: OEAppearance.Size.width, height: OEAppearance.Size.test)
            ForEach(school.imageUrls, id: \.self) { item in
                if #available(iOS 15.0, *) {
                    AsyncImage(url: URL(string: item)) { image in
                        image
                            .resizable()
                            .frame(width: OEAppearance.Size.width, height: OEAppearance.Size.test)
                    } placeholder: {
                        ProgressView()
                    }
                } else {
                    // Fallback on earlier versions
                    EmptyView()
                }
            }
        }
        .frame(height: OEAppearance.Size.test)
        .frame(maxWidth: .infinity)
        .cornerRadiusCustom(25, corners: [.allCorners])
        .defaultShadow()
        .padding(.horizontal, 12)
        .padding(.top, 8)
    }
}
