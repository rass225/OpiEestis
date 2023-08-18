import SwiftUI

struct ModuleCell: View {
    let item: Module
    let eapLabel: String
    let color: Color
    var body: some View {
        DisclosureGroup(item.name.lowercased().capitalized) {
            CoursesCell(item: item, eapLabel: eapLabel, color: color)
            if let items = item.submodules {
                ForEach(items, id: \.self) { item in
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
        ForEach(item.courses, id: \.self) { item in
            CourseCell(name: item.name, eap: item.eapCount, eapLabel: eapLabel, color: color)
        }
    }
}
struct SubmoduleCell: View {
    let item: Submodule
    let eapLabel: String
    let color: Color
    var body: some View {
        ForEach(item.courses, id: \.self) { item in
            CourseCell(name: item.name, eap: item.eapCount, eapLabel: eapLabel, color: color)
        }
    }
}

struct SubSubmoduleView: View {
    let item: Submodule
    let eapLabel: String
    let color: Color
    var body: some View {
        if let submodules = item.submodules {
            ForEach(submodules, id: \.self) { item in
                DisclosureGroup(item.name) {
                    ForEach(item.courses, id: \.self) { item in
                        CourseCell(name: item.name, eap: item.eapCount, eapLabel: eapLabel, color: color)
                    }
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
            .setColor(color)
        }
    }
}
