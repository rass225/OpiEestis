import SwiftUI

struct MajorView: View {
    @EnvironmentObject var theme: Theme
    
    let major: majorsMinors
    let school: School
    
    var body: some View {
        ZStack{
            Color.whiteDim1.edgesIgnoringSafeArea(.bottom)
            VStack(spacing: 0){
                MajorsTitleView(major: major, color: theme.colorTheme)
                MajorStats(major: major, school: school)
                MajorButtonsView(major: major)
            }.padding(.top, -30)
        }
        .navigationBarItems(trailing:
            Button(action: { mapsAction() }) { LocationLogo(major: major, color: theme.colorTheme) }
        )
    }
}

extension MajorView {
    
    func mapsAction() {
        guard let url = URL(string: school.location.coordinates.rawValue) else { return }
        UIApplication.shared.open(url)
    }
    
    private struct LocationLogo: View {
        let major: majorsMinors
        let color: Color
        var body : some View {
            HStack(spacing: 0){
                Image.locationFill.font(.regularTitle3)
                ForEach(major.studyLocation.indices, id: \.self) { item in
                    if major.studyLocation.count > 1 {
                        if item == major.studyLocation.count - 1 {
                            Text(major.studyLocation[item].rawValue)
                        } else {
                            Text("\(major.studyLocation[item].rawValue),")
                        }
                    } else {
                        Text(major.studyLocation[item].rawValue)
                    }
                }
            }
            .font(.semiBoldBody)
            .foregroundColor(color)
        }
    }
}
//i love rasmus <3
