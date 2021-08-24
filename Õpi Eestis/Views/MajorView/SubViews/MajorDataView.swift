import SwiftUI

struct MajorDataView: View {
    let data: [String]
    var body: some View {
        VStack(spacing: 0){
            ForEach(data, id: \.self) { item in
                VStack{
                    Text(item)
                        .font(.regularCallout)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .lineSpacing(5)
                }.padding(.horizontal, 13)
                .padding(.vertical, 10)
                .background(Color.white)
                .cornerRadius(5)
                .padding(.horizontal)
                .padding(.top, 5)
            }
        }.padding(.top, 5)
        
    }
}
