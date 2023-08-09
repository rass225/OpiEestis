import SwiftUI

struct CourseView: View {
    let major: majorsMinors
    let school: School
    
    var body: some View {
        Form{
            ForEach(major.modules) { item in
                ModuleCell(item: item, eapLabel: major.eapLocale, color: school.color)
            }.font(.regularSubHeadline)
                .accentColor(school.color)
        }
        .scrollContentBackground(.hidden)
        .background(Color.whiteDim1)
        .navigationBarBackButtonHidden(true)
        .toolbar{
            AppToolbarItem(.dismiss, color: school.color)
            AppToolbarItem(.title(type: .course), color: school.color)
        }
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
            Text(name)
                .setFont(.subheadline, .regular, .rounded)
            Spacer()
            HStack(spacing: 3){
                Text(eap.isInt() ? "\(Int(eap))" : "\(eap, specifier: "%.1f")")
                    .setFont(.subheadline, .medium, .rounded)
                Text("\(eapLabel)")
                    .setFont(.subheadline, .medium, .rounded)
            }
            .foregroundColor(color)
            
        }
    }
}
