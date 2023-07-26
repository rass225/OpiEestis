import SwiftUI

struct SchoolMajor: View {
    
    
    let school: School
    
    @Binding var education: [majorsMinors]
    @Binding var majorsCount: Int
    
    @State var majors = [StatEntity]()
    
    var body: some View {
        NavigationLink(destination: DegreeView(school: school, education: education)) {
            VStack(alignment: .leading, spacing: 0){
                HStack{
                    VStack(alignment: .leading, spacing: 0){
                        Header(type: .majors, school: school)
                        SubHeader(type: .majors(count: majorsCount))
                    }
                    Spacer()
                    Chevron(type: .normal)
                }
                StatsView(majors: $majors)
                ChartView(majors: $majors, majorsCount: $majorsCount)
                Divider().padding(.top, 20)
            }
        }
        .padding(.horizontal, 24)
        .onAppear {
            DispatchQueue.main.async {
                majors = getLevelStats(school: school)
            }
        }
    }
}

extension SchoolMajor {
    
    private struct ChartView: View {
        @Binding var majors: [StatEntity]
        @Binding var majorsCount: Int
        let maxWidth = UIScreen.main.bounds.width - 50
        var body : some View {
            ZStack {
                //                ForEach(majors.indices, id: \.self) { index in
                //                    Circle()
                //                        .trim(from: index == 0 ? 0.0 : majors[index-1].value/100, to: majors[index].value/100)
                //                        .stroke(majors[index].color, lineWidth: 13)
                //                        .frame(width: 80, height: 80)
                //                }
                HStack(spacing: 0){
                    ForEach(majors.indices, id: \.self) { index in
                        if index == 0 {
                            Rectangle()
                                .frame(width: maxWidth / 100 * majors[index].percentage)
                                .frame(height: 13)
                                .foregroundColor(majors[index].color)
                                .cornerRadiusCustom(10, corners: majors.count == 1 ? .allCorners : [.topLeft, .bottomLeft])
                        } else if index == majors.count - 1 {
                            Rectangle()
                                .frame(width: maxWidth / 100 * majors[index].percentage)
                                .frame(height: 13)
                                .foregroundColor(majors[index].color)
                                .cornerRadiusCustom(10, corners: [.topRight, .bottomRight])
                        } else {
                            Rectangle()
                                .frame(width: maxWidth / 100 * majors[index].percentage)
                                .frame(height: 13)
                                .foregroundColor(majors[index].color)
                            
                        }
                        
                    }
                }
            }
        }
    }
    
    private struct StatsView: View {
        @Binding var majors: [StatEntity]
        var body : some View {
            VStack(alignment: .leading, spacing: 7){
                ForEach(majors, id: \.self) { item in
                    if item.count != 0 {
                        HStack(alignment: .center, spacing: 10){
                            RoundedRectangle(cornerRadius: 25)
                                .fill(item.color)
                                .frame(width: 13, height: 13, alignment: .center)
                            Text("\(item.count)")
                                .font(.semiBoldCallout)
                                .frame(width: 25, alignment: .leading)
                            Text(item.name.rawValue.capitalizingFirstLetter())
                                .font(.regularCaption)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }.foregroundColor(.black)
                    }
                }
            }.padding(.bottom)
        }
    }
    
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
    
    func getLevelStats(school: School) -> [StatEntity] {
        var levels: [StatEntity] = [StatEntity]()
        let levelStats: LevelData
        
        let counts = levelCount(majors: education)
        let percentages = percentace(levelCounts: counts, total: majorsCount)
        
        
        levelStats = LevelData(
            bachelor: StatEntity(name: .bachelor, count: counts.bachelor, color: school.levels.bachelor, percentage: percentages.bachelor, value: 0),
            master: StatEntity(name: .masters, count: counts.master, color:  school.levels.master, percentage: percentages.master, value: 0),
            doctor: StatEntity(name: .doctor, count: counts.doctor, color:  school.levels.doctor, percentage: percentages.doctor, value: 0),
            applied: StatEntity(name: .applied, count: counts.applied, color:  school.levels.applied, percentage: percentages.applied, value: 0),
            kutse: StatEntity(name: .kutseharidus, count: counts.kutse, color:  school.levels.kutse, percentage: percentages.kutse, value: 0)
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
        
        return levels
    }
    func levelCount(majors: [majorsMinors]) -> LevelStats {
        let bachelor = majors.filter{$0.level == .bachelor }.count
        let master = majors.filter{$0.level == .masters }.count
        let intergrated = majors.filter{$0.level == .integrated }.count
        let doctor = majors.filter{$0.level == .doctor }.count
        let kutse = majors.filter{$0.level == .kutseharidus }.count
        let applied = majors.filter{$0.level == .applied }.count
        return LevelStats(bachelor: bachelor, master: master + intergrated, doctor: doctor, applied: applied, kutse: kutse)
    }
    
    func percentace(levelCounts: LevelStats, total: Int) -> LevelPercents {
        let bachelor: CGFloat = CGFloat(levelCounts.bachelor) * 100 / CGFloat(majorsCount)
        let master: CGFloat = CGFloat(levelCounts.master) * 100 / CGFloat(majorsCount)
        let doctor: CGFloat = CGFloat(levelCounts.doctor) * 100 / CGFloat(majorsCount)
        let applied: CGFloat = CGFloat(levelCounts.applied) * 100 / CGFloat(majorsCount)
        let kutse: CGFloat = CGFloat(levelCounts.kutse) * 100 / CGFloat(majorsCount)
        return LevelPercents(bachelor: bachelor, master: master, doctor: doctor, applied: applied, kutse: kutse)
    }
}


