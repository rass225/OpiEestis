import SwiftUI
import MapKit

struct CollegeView: View {
    @EnvironmentObject var pathManager: PathManager
    @StateObject var model: Model
    @State var presentMajors = false
    
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
            ToolbarItem(placement: .principal, content: smallIconView)
        }
        .onAppear {
            Task {
//                await model.loadSnapshot()
                await model.loadEducation()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationDestination(for: Int.self) { _ in
            MajorsView(model: .init(college: model.college, majors: model.majors))
                .environmentObject(pathManager)
        }
        .sheet(isPresented: $model.isMailOpen, content: mailView)
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
            LogoView(
                school: model.college,
                image: model.college.logoRef
            )
        }
    }
    
    struct SnapshotPin: View {
        let image: Image
        let color: Color
        
        var body: some View {
            image
                .resizable()
                .fit()
                .frame(width: 50, height: 110, alignment: .center)
                .setColor(color.gradient)
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
                ForEach(model.mockImages, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .fill()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
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
            pathManager.path.append(1)
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
        Group {
            Map(
                coordinateRegion: .constant(model.college.location.region),
                showsUserLocation: false,
                userTrackingMode: .none,
                annotationItems: [model.college.location]
            ) { location in
                MapAnnotation(coordinate: location.coordinates) {
                    MarkerView(
                        color: model.college.palette.base,
                        logo: model.college.logoRef)
                        .offset(x: 0, y: -45)
                }
//                MapMarker(coordinate: location.coordinates, tint: model.college.palette.base)
            }
            .disabled(true)
            .frame(height: 400)
        }
        .contentShape(Rectangle())
        .onTapGesture(perform: model.openMap)
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

// MARK: - Headers

private extension CollegeView {
    @ViewBuilder
    func header(
        label: String,
        image: Image,
        color: Color
    ) -> some View {
        HStack(spacing: 8){
            image
                .font(.body)
                .setColor(color.gradient)
                .frame(width: 20, alignment: .leading)
            Text(label.capitalized)
                .setFont(.body, .semibold, .rounded)
                .textCase(.none)
                .setColor(.black)
            Spacer()
        }
        .listRowInsets(.eight)
    }
    
    @ViewBuilder
    func subHeader(label: String) -> some View {
        Text(label)
            .setFont(.subheadline, .regular, .rounded)
            .setColor(.darkGray)
    }
    
    @ViewBuilder
    func contactHeader() -> some View {
        header(
            label: "Kontakt",
            image: .phoneFill,
            color: model.college.palette.base
        )
    }
    
    @ViewBuilder
    func admissionHeader() -> some View {
        header(
            label: "Vastuvõtt",
            image: .requirementsFill,
            color: model.college.palette.base
        )
    }
    
    @ViewBuilder
    func summaryHeader() -> some View {
        header(
            label: "Koolist",
            image: .graduationFill,
            color: model.college.palette.base
        )
    }
    
    @ViewBuilder
    func locationHeader() -> some View {
        header(
            label: "Asukoht",
            image: .locationFill,
            color: model.college.palette.base
        )
    }
    
    @ViewBuilder
    func majorsHeader() -> some View {
        header(
            label: "Erialad",
            image: .textBook,
            color: model.college.palette.base
        )
    }
    
    @ViewBuilder
    func mainDataHeader() -> some View {
        GeometryReader { geo in
                Image(model.college.logoRef)
                    .resizable()
                    .fit()
                    .maxWidth()
                    .background(GeometryReader {
                        Color.clear.preference(
                            key: ViewOffsetKey.self,
                            value: -$0.frame(in: .named("scroll")).origin.y
                        )
                    })
        }
        .frame(height: 100, alignment: .top)
        .listRowInsets(.zero)
    }
}

// MARK: - Cells

private extension CollegeView {
    @ViewBuilder
    func statisticCell(
        topLabel: String,
        bottomLabel: String,
        image: Image
    ) -> some View {
        HStack(alignment: .center, spacing: 5){
            image
                .setColor(model.college.palette.base.gradient)
                .font(.title3)
            VStack(alignment: .leading, spacing: 0){
                Text(topLabel)
                    .setFont(.subheadline, .semibold, .rounded)
                    .setColor(.black)
                Text(bottomLabel)
                    .setFont(.footnote, .regular, .rounded)
                    .setColor(.darkGray)
            }
        }
    }
    
    @ViewBuilder
    func linkCell(link: CollegeLink) -> some View {
        if let validLink = URL(string: link.link) {
            Image(link.name)
                .resizable()
                .renderingMode(.template)
                .fit()
                .frame(height: 24)
                .setColor(model.college.palette.base.gradient)
                .padding(8)
                .background(
                    RoundedRectangle(
                        cornerRadius: 10,
                        style: .continuous
                    ).fill(Color.white)
                )
                .onTapGesture {
                    UIApplication.shared.open(validLink)
                }
        }
    }
    
    @ViewBuilder
    func majorContentCell(_ item: Model.StatEntity) -> some View {
        if item.count != 0 {
            HStack(alignment: .center, spacing: 10){
                Circle()
                    .fill(item.color.gradient)
                    .frame(width: 13, height: 13, alignment: .center)
                
                Text(item.name.rawValue.capitalized)
                    .setFont(.subheadline, .regular, .rounded)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("\(item.count)")
                    .setFont(.subheadline, .semibold, .rounded)
            }.setColor(.black)
        }
    }
}

// MARK: - Buttons

private extension CollegeView {
    @ViewBuilder
    func contactButton(
        label: String,
        image: Image,
        action: @escaping () -> ()
    ) -> some View {
        image
            .setFont(.title2, .regular, .rounded)
            .setColor(model.college.palette.base.gradient)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.vertical, 12)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .onTapGesture(perform: action)
    }
    
    @ViewBuilder
    func copyButton(text: String) -> some View {
        Button(action: {
            UIPasteboard.general.string = text
        }) {
            Image(systemName: "doc.on.doc.fill")
                .font(.callout)
                .fontWeight(.light)
                .setColor(model.college.palette.base.gradient)
                .padding(8)
                .background(Circle().fill(Color.white))
        }
    }
    
    @ViewBuilder
    func backButton() -> some View {
        Image.chevronLight
            .frame(height: 35)
            .frame(width: 35)
            .setFont(.callout, .bold, .rounded)
            .setColor(model.college.palette.base.gradient)
            .onTapGesture {
//                dismiss.wrappedValue.dismiss()
            }
    }
}

struct ViewOffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value += nextValue()
    }
}
