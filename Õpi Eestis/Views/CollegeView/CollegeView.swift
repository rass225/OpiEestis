import SwiftUI
import MapKit

struct CollegeView: View {
    @EnvironmentObject var appState: AppState
    @StateObject var model: Model
    
    var body: some View {
        ScrollViewReader { scrollView in
            List {
                Section(content: mainDataContent, header: mainDataHeader)
                Section(content: imageContent)
                Section(content: majorsContent, header: majorsHeader)
                Section(content: summaryContent, header: summaryHeader)
                Section(content: locationContent, header: locationHeader)
            }
            .coordinateSpace(name: "scroll")
            .onPreferenceChange(ViewOffsetKey.self) { offset in
                model.isSmallImageShown = offset > -30
            }
            .scrollIndicators(.hidden)
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading, content: backButton)
            ToolbarItem(placement: .principal, content: smallIconView)
            ToolbarItem(placement: .topBarTrailing, content: helpButton)
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

extension CollegeView {
    @ViewBuilder
    func mainDataContent() -> some View {
        VStack(spacing: 0) {
            Text(model.college.name.capitalized)
                .setFont(.title3, .semibold, .rounded)
                .setColor(Theme.Colors.black)
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
            }.padding(.vertical, majorContentPadding())
        }
        .padding(.vertical, 4)
        .background(content: {
            Image(model.college.logoRef)
                .renderingMode(model.college.logoModifiable ? .template : .original)
                .resizable()
                .fit()
                .setColor(model.college.palette.secondary)
                .opacity(model.college.logoModifiable ? 0.2 : 0.35)
                .maxWidth(alignment: .trailing)
                .padding(.trailing, 24)
        })
        .listRowBackground(Rectangle().fill(model.college.palette.base.gradient))
        .contentShape(Rectangle())
        .onTapGesture {
            appState.route(to: CollegeDestination.majors(
                college: model.college,
                majors: model.majors
            ))
        }
    }
    
    func majorContentPadding() -> CGFloat {
        if model.majorStats.count == 1 {
            return 16
        } else if model.majorStats.count == 2 {
            return 8
        } else {
            return 0
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
                Text(.init(school.description))
                    .setFont(.subheadline, .regular, .rounded)
                    .lineLimit(isExpanded ? nil : 5)
                    .truncationMode(.tail)
                    .setColor(Theme.Colors.black)
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
        mapView
    }

    var mapView: some View {
        Image(uiImage: model.standardMapSnapshot)
            .resizable()
            .fill()
            .listRowInsets(.zero)
            .listRowSeparator(.hidden)
            .overlay(alignment: .topTrailing) {
                Image(systemName: "location.fill.viewfinder")
                    .setFont(.title, .medium, .rounded)
                    .setColor(model.college.palette.base.gradient)
                    .padding(4)
                    .background(.regularMaterial)
                    .clipShape(.rect(cornerRadius: 6, style: .continuous))
                    .padding(16)
                    .onTapGesture(perform: model.presentMapView)
            }
            .sheet(isPresented: $model.isMapViewPresented, content: {
                CollegeMapView(model: model.createCollegeMapViewModel())
            })
    }
    
    @ViewBuilder
    func contactContent() -> some View {
        ControlGroup {
            Button(action: model.callCollege) {
                Text("Helista")
                Theme.Icons.phone
            }
            Button(action: model.openEmail) {
                Text("Email")
                Theme.Icons.envelope
            }
            Button(action: model.openHomePage) {
                Text("Koduleht")
                Theme.Icons.house
            }
        }
    }
    
    @ViewBuilder
    func statisticsContent() -> some View {
        HStack(alignment: .center, spacing: 0) {
            Spacer()
            statisticCell(
                topLabel: String(model.college.students),
                bottomLabel: OEAppearance.Locale.students,
                image: Theme.Icons.person2
            )
            Spacer()
            statisticCell(
                topLabel: String(model.majors.count),
                bottomLabel: OEAppearance.Locale.major,
                image: Theme.Icons.textBook
            )
            Spacer()
            statisticCell(
                topLabel: String(model.college.branches.count),
                bottomLabel: OEAppearance.Locale.cities,
                image: Theme.Icons.mappinCircle
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
