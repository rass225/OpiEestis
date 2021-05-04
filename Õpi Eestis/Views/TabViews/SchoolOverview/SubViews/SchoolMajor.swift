import SwiftUI

struct SchoolMajor: View {
    
    let school: School
    @ObservedObject var presenter = SchoolViewPresenter()
    var body: some View {
        ZStack{
            NavigationLink(destination: DegreeView(school: school)) {
                VStack{
                    ZStack{
                        HStack(spacing: 20){
                            ZStack {
                                ForEach(presenter.getLevelStats(school: school).indices) { index in
                                    Circle()
                                        .trim(from: index == 0 ? 0.0 : presenter.getLevelStats(school: school)[index-1].value/100, to: presenter.getLevelStats(school: school)[index].value/100)
                                        .stroke(presenter.getLevelStats(school: school)[index].color, lineWidth: 10)
                                }
                                VStack{
                                    Text("\(school.education.count)").font(.boldCallout)
                                    Text("Eriala").font(.regularCaption)
                                }
                            }
                            .padding(.leading)
                            .frame(width: 90, height: 90)
                            .padding(.trailing)
                            VStack(alignment: .leading, spacing: 5){
                                ForEach(presenter.getLevelStats(school: school)) { item in
                                    if item.level != 0 {
                                        HStack(alignment: .center, spacing: 10){
                                            RoundedRectangle(cornerRadius: 25)
                                                .fill(item.color)
                                                .frame(width: 10, height: 10, alignment: .center)
                                            Text("\(item.level)")
                                                .font(.boldCallout)
                                                .frame(width: 25, alignment: .leading)
                                            Text(item.name)
                                                .font(.regularCaption)
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                        }.foregroundColor(Color.black)
                                    }
                                }
                            }
                        }
                        HStack{
                            Spacer()
                            Image.chevronRight
                                .padding(.trailing, 10)
                        }
                    }
                    
                }.padding(.vertical, 20)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity)
            .foregroundColor(.black)
            .background(Color.white)
            .cornerRadius(5)
            .padding()
        }
    }
}
