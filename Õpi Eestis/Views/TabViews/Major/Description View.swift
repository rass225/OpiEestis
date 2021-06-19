import SwiftUI

struct Description_View: View {
    let major: majorsMinors
    let navBar = NavigationBarTitles()
    
    var body: some View {
        ZStack{
            Color.whiteDim1.ignoreEdges(edge: .all)
            ScrollView{
                VStack(spacing: 0){
                    ForEach(major.description, id: \.self) { hey in
                        VStack{
                            Text(hey)
                                .font(.regularCallout)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                //.padding(.vertical, 8)
                                .lineSpacing(5)
                        }.padding(.horizontal, 13)
                        .padding(.vertical, 10)
                        .background(Color.white)
                        .cornerRadius(5)
                        .padding(.horizontal)
                        .padding(.top, 3.5)
                    }
                }
            }
        }.navigationBarTitle(navBar.descriptionTitle, displayMode: .automatic)
    }
}

