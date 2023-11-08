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
                Section(content: virtualTourView)
                Section(content: majorsContent, header: majorsHeader)
                Section(content: summaryContent, header: summaryHeader)
                Section(content: locationContent, header: locationHeader)
            }
            .scrollIndicators(.hidden)
            .coordinateSpace(name: "scroll")
            .onPreferenceChange(ViewOffsetKey.self) { offset in
                model.isSmallImageShown = offset > -30
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading, content: backButton)
            ToolbarItem(placement: .principal, content: smallIconView)
            ToolbarItem(placement: .topBarTrailing, content: helpButton)
        }
        .toolbar(.visible, for: .tabBar)
        .toolbarBackground(.visible, for: .tabBar)
        .navigationBarBackButtonHidden()
        .fullScreenCover(item: $model.webLink) {
            webView(link: $0)
        }
        .task {
            model.start()
        }
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
    func webView(link: Model.WebLink) -> some View {
        VStack(spacing: 0) {
            WebView(urlString: link.link)
                .maxSize()
            Text(Theme.Locale.College.back)
                .setFont(.body, .medium, .rounded)
                .setColor(.white)
                .padding(.vertical, 8)
                .padding(.horizontal, 32)
                .background(
                    Capsule(style: .continuous)
                        .fill(model.college.palette.base.gradient)
                )
                .padding(.top)
                .onTapGesture {
                    model.webLink = nil
                }
        }
        .presentationCornerRadius(16)
        .presentationBackground(Color.black)
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
    func virtualTourView() -> some View {
        if let virtualTourUrlString = model.college.virtualTourLink {
            HStack {
                Text(Theme.Locale.College.lookVirtualTour)
                    .setFont(.body, .medium, .rounded)
                    .setColor(.white)
                Spacer()
                PulsingPlayView(color: model.college.palette.base)
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
            }
            .foregroundColor(.white)
            .padding(.vertical, 6)
            .listRowBackground(
                ZStack {
                    Capsule()
                        .fill(Color.white)
                    Capsule()
                        .fill(model.college.palette.base.gradient)
                }
            )
            .contentShape(Rectangle())
            .onTapGesture {
                model.webLink = .init(link: virtualTourUrlString)
            }
        }
    }
    
    @ViewBuilder
    func majorsContent() -> some View {
        VStack(spacing: 16) {
            VStack(alignment: .leading, spacing: 12){
                if model.majorsLevelCounts.vocational > 0 {
                    levelView(for: .vocational, count: model.majorsLevelCounts.vocational)
                }
                
                if model.majorsLevelCounts.applied > 0 {
                    levelView(for: .applied, count: model.majorsLevelCounts.applied)
                }
                
                if model.majorsLevelCounts.bachelor > 0 {
                    levelView(for: .bachelor, count: model.majorsLevelCounts.bachelor)
                }
                
                if model.majorsLevelCounts.integrated + model.majorsLevelCounts.masters > 0 {
                    levelView(for: .masters, count: model.majorsLevelCounts.masters)
                }
                
                if model.majorsLevelCounts.doctor > 0 {
                    levelView(for: .doctor, count: model.majorsLevelCounts.doctor)
                }
            }.padding(.vertical, model.majorContentPadding())
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
            appState.route(to: .majors(college: model.college, majors: model.majors))
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
                Text(isExpanded ? Theme.Locale.College.less : Theme.Locale.College.more)
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
        Image(uiImage: model.mapSnapshot)
            .resizable()
            .fill()
            .listRowInsets(.zero)
            .listRowSeparator(.hidden)
            .overlay(alignment: .topTrailing, content: expandButton)
            .sheet(isPresented: $model.isMapViewPresented, content: {
                CollegeMapView(model: model.createCollegeMapViewModel())
            })
    }
    
    @ViewBuilder
    func contactContent() -> some View {
        ControlGroup {
            Button(action: model.callCollege) {
                Text(Theme.Locale.College.call)
                Theme.Icons.phone
            }
            Button(action: model.openEmail) {
                Text(Theme.Locale.College.email)
                Theme.Icons.envelope
            }
            Button(action: model.openHomePage) {
                Text(Theme.Locale.College.homepage)
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
                bottomLabel: Theme.Locale.College.students,
                image: Theme.Icons.person2
            )
            Spacer()
            statisticCell(
                topLabel: String(model.majors.count),
                bottomLabel: Theme.Locale.College.major,
                image: Theme.Icons.textBook
            )
            .onTapGesture {
                appState.route(to: .majors(college: model.college, majors: model.majors))
            }
            Spacer()
            statisticCell(
                topLabel: String(model.college.branches.count),
                bottomLabel: Theme.Locale.College.cities,
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
