import SwiftUI

struct AboutViewButton: View {
    let school: School
    var body: some View {
        ZStack{
            HStack{
                Image.info
                    .frame(height: 30)
                    .frame(width: 30)
                    .font(.regularTitle3)
                    .background(Color.oeBlue)
                    .cornerRadius(50)
                    .foregroundColor(Color.white)
                Spacer()
                Image.chevronRight.foregroundColor(Color.oeBlue)
            }.frame(height: 35)
            Text(school.name.rawValue).font(.regularCallout)
        }
        .padding(.vertical, 5)
        .padding(.leading, 25)
        .padding(.trailing, 10)
        
        .background(Color.white)
        .foregroundColor(.black)
        .cornerRadius(6)
        .padding(.horizontal)
        .padding(.top)
//        .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 0)
    }
}
