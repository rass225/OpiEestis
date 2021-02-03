//
//  SchoolMajor.swift
//  Õpi Eestis
//
//  Created by Rasmus Tauts on 29.01.2021.
//

import SwiftUI

struct SchoolMajor: View {
    
    let school: School
    let gradient = Gradient(colors: [Color.white, Color.whiteDim1])
    
    var body: some View {
        ZStack{
            Color.white
            VStack{
                NavigationLink(destination: DegreeView(school: school)) {
                    ZStack{
                        VStack(alignment: .center, spacing: 20){
                            LabelledDivider2(label: "Erialad")
                            HStack(spacing: 10){
                                LevelStat(label: "Kutseharidus", stat: getLevelStats().kutse)
                                LevelStat(label: "Rakenduskõrgharidus", stat: getLevelStats().applied)
                                LevelStat(label: "Bakalaureus", stat: getLevelStats().bachelor)
                                LevelStat(label: "Magister", stat: getLevelStats().master)
                                LevelStat(label: "Doktor", stat: getLevelStats().doctor)
                            }
                            Spacer()
                        }.padding(.top, 40)
                        Image.chevronRight
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }.frame(maxHeight: .infinity)
                }.padding(.horizontal, 20)
            }
            .foregroundColor(Color.black)
            .background(Color.whiteDim1)
            .cornerRadiusCustom(100, corners: .bottomLeft)
        }
    }
}

extension SchoolMajor{
    
    private struct LevelStats {
        var bachelor: Int
        var master: Int
        var doctor: Int
        var applied: Int
        var kutse: Int
    }
    
    private func getLevelStats() -> LevelStats {
        let levelStats: LevelStats
        let bachelor = school.education.filter{$0.level.rawValue == "bakalaureus" }.count
        let master = school.education.filter{$0.level.rawValue == "magister" }.count
        let intergrated = school.education.filter{$0.level.rawValue == "integreeritud õpe" }.count
        let doctor = school.education.filter{$0.level.rawValue == "doktor" }.count
        let kutse = school.education.filter{$0.level.rawValue == "kutseharidus" }.count
        let applied = school.education.filter{$0.level.rawValue == "rakenduskõrgharidus" }.count
        
        levelStats = LevelStats(bachelor: bachelor, master: master + intergrated, doctor: doctor, applied: applied, kutse: kutse)
        return levelStats
    }
}


