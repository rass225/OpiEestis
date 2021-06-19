import SwiftUI

struct SchoolMajor: View {
    @EnvironmentObject var theme : Theme
    @ObservedObject var presenter = SchoolViewPresenter()
    let school: School
    @State var majors = [StatEntity]()
   
    var body: some View {
        ZStack{
            NavigationLink(destination: DegreeView(school: school)) {
                VStack{
                    ZStack{
                        HStack(spacing: 20){
                            ZStack {
                                ForEach(majors.indices, id: \.self) { index in
                                    Circle()
                                        .trim(from: index == 0 ? 0.0 : majors[index-1].value/100, to: majors[index].value/100)
                                        .stroke(majors[index].color, lineWidth: 10)
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
                                ForEach(majors, id: \.self) { item in
                                    if item.count != 0 {
                                        HStack(alignment: .center, spacing: 10){
                                            RoundedRectangle(cornerRadius: 25)
                                                .fill(item.color)
                                                .frame(width: 10, height: 10, alignment: .center)
                                            Text("\(item.count)")
                                                .font(.boldCallout)
                                                .frame(width: 25, alignment: .leading)
                                            Text(item.name.rawValue)
                                                .font(.regularCaption)
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                        }.foregroundColor(Color.black)
                                    }
                                }
                            }
                        }
                        HStack{
                            Spacer()
                            Image.chevronRight.foregroundColor(theme.colorTheme)
                                .padding(.trailing, 10)
                        }
                    }
                }.padding(.vertical, 20)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity)
            .foregroundColor(.black)
            .background(Color.white)
            .cornerRadius(6)
            .padding(.horizontal)
            .padding(.top)
        }
        .onAppear {
            DispatchQueue.main.async {
                getLevelStats(school: school)
            }
        }
    }
}

extension SchoolMajor {
    struct LevelData {
        var bachelor: StatEntity
        var master: StatEntity
        var doctor: StatEntity
        var applied: StatEntity
        var kutse: StatEntity
    }
    struct StatEntity: Identifiable, Hashable {
        var id = UUID()
        var name: levelchoice
        var count: Int
        var color: Color
        var percentage: CGFloat
        var value: CGFloat
    }
    struct LevelStats {
        var bachelor: Int
        var master: Int
        var doctor: Int
        var applied: Int
        var kutse: Int
    }
    struct LevelPercents {
        var bachelor: CGFloat
        var master: CGFloat
        var doctor: CGFloat
        var applied: CGFloat
        var kutse: CGFloat
    }
    
    func getLevelStats(school: School){
        var levels: [StatEntity] = [StatEntity]()
        let levelStats: LevelData
        
        let counts = levelCount(majors: school.education)
        let percentages = percentace(levelCounts: counts, total: school.education.count)
        
        
        levelStats = LevelData(
            bachelor: StatEntity(name: .bachelor, count: counts.bachelor, color: theme.levelColors.bachelor, percentage: percentages.bachelor, value: 0),
            master: StatEntity(name: .masters, count: counts.master, color: theme.levelColors.master, percentage: percentages.master, value: 0),
            doctor: StatEntity(name: .doctor, count: counts.doctor, color: theme.levelColors.doctor, percentage: percentages.doctor, value: 0),
            applied: StatEntity(name: .applied, count: counts.applied, color: theme.levelColors.applied, percentage: percentages.applied, value: 0),
            kutse: StatEntity(name: .kutseharidus, count: counts.kutse, color: theme.levelColors.kutse, percentage: percentages.kutse, value: 0)
        )
        
        
        if levelStats.applied.percentage > 0 {
            levels.append(levelStats.applied)
        }
        if levelStats.kutse.percentage > 0 {
            levels.append(levelStats.kutse)
        }
        if levelStats.bachelor.percentage > 0 {
            levels.append(levelStats.bachelor)
        }
        if levelStats.master.percentage > 0 {
            levels.append(levelStats.master)
        }
        if levelStats.doctor.percentage > 0 {
            levels.append(levelStats.doctor)
        }
        
        var value : CGFloat = 0
            
        for i in 0..<levels.count {
            value += levels[i].percentage
            levels[i].value = value
        }
        DispatchQueue.main.async {
            majors = levels
            print("done")
        }
    }
    func levelCount(majors: [majorsMinors]) -> LevelStats {
        let bachelor = majors.filter{$0.level == .bachelor }.count
        let master = majors.filter{$0.level == .masters }.count
        let intergrated = majors.filter{$0.level == .integrated }.count
        let doctor = majors.filter{$0.level == .doctor }.count
        let kutse = majors.filter{$0.level == .kutseharidus }.count
        let applied = majors.filter{$0.level == .applied }.count
        print(LevelStats(bachelor: bachelor, master: master + intergrated, doctor: doctor, applied: applied, kutse: kutse))
        return LevelStats(bachelor: bachelor, master: master + intergrated, doctor: doctor, applied: applied, kutse: kutse)
    }
    
    func percentace(levelCounts: LevelStats, total: Int) -> LevelPercents {
        let bachelor: CGFloat = CGFloat(levelCounts.bachelor) * 100 / CGFloat(total)
        let master: CGFloat = CGFloat(levelCounts.master) * 100 / CGFloat(total)
        let doctor: CGFloat = CGFloat(levelCounts.doctor) * 100 / CGFloat(total)
        let applied: CGFloat = CGFloat(levelCounts.applied) * 100 / CGFloat(total)
        let kutse: CGFloat = CGFloat(levelCounts.kutse) * 100 / CGFloat(total)
        print(LevelPercents(bachelor: bachelor, master: master, doctor: doctor, applied: applied, kutse: kutse))
        return LevelPercents(bachelor: bachelor, master: master, doctor: doctor, applied: applied, kutse: kutse)
    }
}
