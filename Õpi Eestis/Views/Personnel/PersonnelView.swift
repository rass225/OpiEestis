import SwiftUI

struct PersonnelView: View {
    let major: majorsMinors
    let school: School
    var body: some View {
        ZStack{
            Color.whiteDim1.edgesIgnoringSafeArea(.all)
            ScrollView{
                ForEach(major.personnel!) { item in
                    TestView(personnel: item, school: school)
                }.padding(.top, 20)
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar{
            AppToolbarItem(.dismiss, color: school.color)
            AppToolbarItem(.title(type: .personnel), color: school.color)
        }
    }
}

struct TestView: View {
    
    let personnel: Personnel
    let school: School
    
    var body: some View {
        HStack(alignment: .top, spacing: 16){
            if personnel.photo != nil {
                Image(personnel.photo!)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .padding(5)
                    .clipShape(Circle())
                    .shadow(radius: 5)
                    .overlay(Circle().stroke(Color.darkGray, lineWidth: 3))
            } else {
                Image("noface")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .padding(5)
                    .foregroundColor(school.color.opacity(0.9))
                    .offset(x: 0, y: 5)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.whiteDim2, lineWidth: 3))
            }
            
            VStack(alignment: .leading, spacing: 5){
                Text(personnel.name)
                    .font(.semiBoldBody)
                Text(personnel.title)
                    .font(.regularCaption)
                    .foregroundColor(.darkGray)
            }
            Spacer()
            HStack(spacing: 16){
                if personnel.phone != nil {
                    Button(action: {
                        phoneCall(number: personnel.phone!)
                    }) {
                        Image.phoneFill
                            .font(.semiBoldTitle2)
                            .foregroundColor(school.color)
                    }
                }
                if personnel.email != nil {
                    Button(action: {
                        
                    }) {
                        Image.envelopeFill
                            .font(.semiBoldTitle2)
                            .foregroundColor(school.color)
                    }
                }
                
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .padding(.top, 3)
        .padding(.horizontal)
        .foregroundColor(Color.black)
    }
    
    func phoneCall(number: String) {
        let formattedString = OEAppearance.Locale.network.telHttps + number
        let url: NSURL = URL(string: formattedString)! as NSURL
        UIApplication.shared.open(url as URL)
    }
}
