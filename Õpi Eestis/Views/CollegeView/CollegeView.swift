import SwiftUI
import MapKit

struct CollegeView: View {
    @EnvironmentObject var appState: AppState
    @Environment(\.dismiss) var dismiss
    @StateObject var model: Model
    
    var body: some View {
        ScrollViewReader { scrollView in
            List {
                Section(content: mainDataContent, header: mainDataHeader)
                Section(content: imageContent)
                Section(content: majorsContent, header: majorsHeader)
                Section(content: summaryContent, header: summaryHeader)
                Section(content: locationContent, header: locationHeader)
//                Section(content: admissionContent, header: admissionHeader)
                Section(content: contactContent, header: contactHeader)
            }
            .coordinateSpace(name: "scroll")
            .onPreferenceChange(ViewOffsetKey.self) { offset in
                model.isSmallImageShown = offset > -30
            }
            .scrollIndicators(.hidden)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading, content: backButton)
            ToolbarItem(placement: .principal, content: smallIconView)
        }
        .toolbar(.visible, for: .tabBar)
        .toolbarBackground(.visible, for: .tabBar)
        .navigationBarBackButtonHidden()
        
    }
}

extension CollegeView {
    struct LogoView: View {
        let school: College
        let image: String
        var body: some View {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 45)
        }
    }
    
    @ViewBuilder
    func mailView() -> some View {
        CollegeMailView(
            result: $model.mailResult,
            email: model.college.contact.email
        )
    }
    
    @ViewBuilder
    func smallIconView() -> some View {
        if model.isSmallImageShown {
            Image(model.college.logoRef)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 45)
        }
    }
}

// MARK: - Content

private extension CollegeView {
    @ViewBuilder
    func mainDataContent() -> some View {
        VStack(spacing: 0) {
            Text(model.college.name.capitalized)
                .setFont(.title3, .semibold, .rounded)
                .setColor(.black)
                .textCase(.none)
                .maxWidth()
                .padding(.top, 16)
            linksContent()
            statisticsContent()
        }
        .listRowInsets(.zero)
        .listRowBackground(Color.clear)
    }
    
    @ViewBuilder
    func linksContent() -> some View {
        HStack(spacing: 10) {
            ForEach(model.college.links, id: \.self) { item in
                linkCell(link: item)
            }
        }
        .listRowInsets(.zero)
        .listRowBackground(Color.clear)
        .padding(.top, 20)
    }
    
    @ViewBuilder
    func imageContent() -> some View {
            TabView {
                ForEach(model.college.imageRefs, id: \.self) { ref in
                   imageCell(ref)
                }
            }
            .frame(height: 250)
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            .listRowInsets(.zero)
    }
    
    @ViewBuilder
    func majorsContent() -> some View {
        VStack(spacing: 16) {
            VStack(alignment: .leading, spacing: 12){
                ForEach(model.majorStats, id: \.self) { item in
                    majorContentCell(item)
                }
            }
            GeometryReader { geo in
                let maxWidth = geo.size.width
                HStack(spacing: 0){
                    ForEach(model.majorStats.indices, id: \.self) { index in
                        if index == 0 {
                            Rectangle()
                                .frame(width: maxWidth / 100 * model.majorStats[index].percentage)
                                .frame(height: 13)
                                .setColor(model.majorStats[index].color.gradient)
                                .cornerRadiusCustom(10, corners: model.majorStats.count == 1 ? .allCorners : [.topLeft, .bottomLeft])
                        } else if index == model.majorStats.count - 1 {
                            Rectangle()
                                .frame(width: maxWidth / 100 * model.majorStats[index].percentage)
                                .frame(height: 13)
                                .setColor(model.majorStats[index].color.gradient)
                                .cornerRadiusCustom(10, corners: [.topRight, .bottomRight])
                        } else {
                            Rectangle()
                                .frame(width: maxWidth / 100 * model.majorStats[index].percentage)
                                .frame(height: 13)
                                .setColor(model.majorStats[index].color.gradient)
                        }
                    }
                }
            }.frame(height: 13)
        }
        .padding(.vertical, 4)
        .contentShape(Rectangle())
        .onTapGesture {
            appState.route(to: CollegeDestination.majors(
                college: model.college,
                majors: model.majors
            ))
        }
    }
    
    @ViewBuilder
    func admissionContent() -> some View {
        VStack(alignment: .leading, spacing: 0){
            ForEach(model.college.admission, id: \.self) { item in
                subHeader(label: item)
            }
        }
    }
    
    @ViewBuilder
    func summaryContent() -> some View {
        SummaryContent(school: model.college)
    }
    
    struct SummaryContent: View {
        let school: College
        @State private var isExpanded = false
 
        var body: some View {
            VStack(alignment: .center, spacing: 16){
                Text(school.description)
                    .setFont(.subheadline, .regular, .rounded)
                    .lineLimit(isExpanded ? nil : 5)
                    .truncationMode(.tail)
                    .setColor(.black)
                Text(isExpanded ? OEAppearance.Locale.expanded.isExpanded : OEAppearance.Locale.expanded.notExpanded)
                    .setFont(.caption2, .medium, .rounded)
                    .setColor(.gray)
            }
            .onTapGesture {
                isExpanded.toggle()
            }
        }
    }
    
    @ViewBuilder
    func locationContent() -> some View {
        HStack{
            Text(model.college.location.longAddress)
                .setFont(.subheadline, .regular, .rounded)
                .setColor(.black)
            Spacer()
            Chevron(type: .link)
        }
        .contentShape(Rectangle())
        .onTapGesture(perform: model.openMap)
        Image(uiImage: model.bigMap)
            .resizable()
            .fill()
            .listRowInsets(.zero)
            .listRowSeparator(.hidden)
            .overlay {
                Image("pin")
                    .resizable()
                    .fit()
                    .frame(width: 32, height: 40)
                    .setColor(model.college.palette.base.gradient)
                    .offset(x: 0, y: -16)
            }
            .frame(height: 400)
            .overlay(alignment: .bottomTrailing) {
                Image(uiImage: model.smallMap)
                    .resizable()
                    .fill()
                    .frame(width: 56, height: 56)
                    .smoothCorners(radius: 4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(.white, lineWidth: 2)
                        )
                    .padding(2)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(model.college.palette.base, lineWidth: 2)
                        )
                    .offset(x: -32, y: -16)
                    .onTapGesture(perform: model.flipMap)
            }
            .listRowInsets(.zero)
            .listRowSeparator(.hidden)
    }
    
    @ViewBuilder
    func contactContent() -> some View {
        HStack(spacing: 16) {
            contactButton(
                label: "Koduleht",
                image: .houseFill,
                action: model.openHomePage
            )
            contactButton(
                label: "Helista",
                image: .phoneFill,
                action: model.callCollege
            )
            contactButton(
                label: "Email",
                image: .envelopeFill,
                action: model.openEmail
            )
        }
        .listRowInsets(.zero)
        .listRowBackground(Color.clear)
    }
    
    @ViewBuilder
    func statisticsContent() -> some View {
        HStack(alignment: .center, spacing: 0) {
            Spacer()
            statisticCell(
                topLabel: String(model.college.students),
                bottomLabel: OEAppearance.Locale.students,
                image: .person2Fill
            )
            Spacer()
            statisticCell(
                topLabel: String(model.majors.count),
                bottomLabel: OEAppearance.Locale.major,
                image: .textBook
            )
            Spacer()
            statisticCell(
                topLabel: String(model.college.branches.count),
                bottomLabel: OEAppearance.Locale.cities,
                image: .mappinCircleFill
            )
            Spacer()
        }
        .padding(.top, 24)
    }
}

struct ViewOffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value += nextValue()
    }
}
