import SwiftUI

struct ModuleCell: View {
    let item: Module
    let eapLabel: String
    let color: Color

    var body: some View {
        DisclosureGroup(content: {
            CoursesCell(courses: item.courses, eapLabel: eapLabel, color: color)
            if let submodules = item.submodules {
                ForEach(submodules, id: \.self) { submodule in
                    DisclosureGroup(content: {
                        SubmoduleCell(item: submodule, eapLabel: eapLabel, color: color)
                    }, label: {
                        Text(submodule.name)
                            .setFont(.subheadline, .regular, .rounded)
                    })
                }
            }
        }, label: {
            Text(item.name)
                .setFont(.subheadline, .regular, .rounded)
        })
        .setFont(.subheadline, .semibold, .rounded)
    }
}

struct SubmoduleCell: View {
    let item: Submodule
    let eapLabel: String
    let color: Color

    var body: some View {
        CoursesCell(courses: item.courses, eapLabel: eapLabel, color: color)
        if let subsubmodules = item.submodules {
            ForEach(subsubmodules, id: \.self) { subsubmodule in
                DisclosureGroup(content: {
                    SubSubmoduleCell(item: subsubmodule, eapLabel: eapLabel, color: color)
                }, label: {
                    Text(subsubmodule.name)
                        .setFont(.subheadline, .regular, .rounded)
                })
            }
        }
    }
}

struct SubSubmoduleCell: View {
    let item: SubSubmodule
    let eapLabel: String
    let color: Color

    var body: some View {
        CoursesCell(courses: item.courses, eapLabel: eapLabel, color: color)
        if let subsubsubmodules = item.submodule {
            ForEach(subsubsubmodules, id: \.self) { subsubsubmodule in
                DisclosureGroup(content: {
                    CoursesCell(courses: subsubsubmodule.courses, eapLabel: eapLabel, color: color)
                }, label: {
                    Text(subsubsubmodule.name)
                        .setFont(.subheadline, .regular, .rounded)
                })
            }
        }
    }
}

struct CoursesCell: View {
    let courses: [Course]
    let eapLabel: String
    let color: Color

    var body: some View {
        ForEach(courses, id: \.self) { course in
            CourseCell(name: course.name, eap: course.eapCount, eapLabel: eapLabel, color: color)
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
                Text(eap.isInt() ? "\(Int(eap))" : "\(eap.decimals(1))")
                    .setFont(.subheadline, .medium, .rounded)
                Text(eapLabel)
                    .setFont(.subheadline, .medium, .rounded)
            }
            .setColor(color)
        }
    }
}
