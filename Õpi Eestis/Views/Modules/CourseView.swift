import SwiftUI

struct CourseView: View {
    let major: majorsMinors
    let school: School
    @State var eapLabel = ""
    var body: some View {
        ZStack{
            Color.whiteDim1.ignoresSafeArea()
            VStack(spacing: 0){
                Form{
                    ForEach(major.modules!) { item in
                        ModuleCell(item: item, eapLabel: eapLabel, color: school.color)
                    }.font(.regularSubHeadline)
                        .accentColor(school.color)
                }
            }
        }.onAppear{
            eapLabel = major.hasEap() ? OEAppearance.Locale.eap : OEAppearance.Locale.ekap
        }
       
        .navigationBarBackButtonHidden(true)
        .toolbar{
            AppToolbarItem(.dismiss, color: school.color)
            AppToolbarItem(.title(type: .course), color: school.color)
        }
    }
    struct ModuleCell: View {
        let item: Module
        let eapLabel: String
        let color: Color
        var body: some View {
            DisclosureGroup(item.name) {
                CoursesCell(item: item, eapLabel: eapLabel, color: color)
                if item.submodules != nil {
                    ForEach(item.submodules!) { item in
                        DisclosureGroup(item.name) {
                            SubmoduleCell(item: item, eapLabel: eapLabel, color: color)
                            if item.submodules != nil {
                                SubSubmoduleView(item: item, eapLabel: eapLabel, color: color)
                            }
                        }
                    }
                }
            }
        }
    }
    struct CoursesCell: View {
        let item: Module
        let eapLabel: String
        let color: Color
        var body: some View {
            ForEach(item.courses) { item in
                CourseCell(name: item.name, eap: item.eapCount, eapLabel: eapLabel, color: color)
            }
        }
    }
    struct SubmoduleCell: View {
        let item: Submodule
        let eapLabel: String
        let color: Color
        var body: some View {
            ForEach(item.courses) { item in
                CourseCell(name: item.name, eap: item.eapCount, eapLabel: eapLabel, color: color)
            }
        }
    }
    
    struct SubSubmoduleView: View {
        let item: Submodule
        let eapLabel: String
        let color: Color
        var body: some View {
            ForEach(item.submodules!) { item in
                DisclosureGroup(item.name) {
                    ForEach(item.courses) { item in
                        CourseCell(name: item.name, eap: item.eapCount, eapLabel: eapLabel, color: color)
                    }
                }
            }
        }
    }
    
    struct CourseCell: View {
        let name: String
        let eap: Double
        let eapLabel: String
        let color: Color
        var body : some View {
            HStack(spacing: 0){
                Text(name).font(.lightSubheadline)
                Spacer()
                HStack(spacing: 3){
                    Text(eap.isInt() ? "\(Int(eap))" : "\(eap, specifier: "%.1f")")
                    Text("\(eapLabel)")
                }.foregroundColor(color)
                .font(.regularSubHeadline)
            }
        }
    }
}



