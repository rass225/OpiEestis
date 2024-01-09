import SwiftUI

// MARK: - View Components

extension MajorView {
    @ViewBuilder
    func youtubeView() -> some View {
        if let videoId = model.major.videoId {
            YouTubeView(videoID: videoId)
                .frame(height: 256)
                .clipShape(.rect(cornerRadius: 12, style: .continuous))
                .padding(.horizontal, 20)
        }
    }
    
    @ViewBuilder
    func vimeoView() -> some View {
        if let vimeoId = model.major.vimeoId {
            VimeoView(videoID: vimeoId, color: model.college.palette.base)
                .frame(height: 256)
                .clipShape(.rect(cornerRadius: 12, style: .continuous))
                .padding(.horizontal, 20)
        }
    }
    
    @ViewBuilder
    func spotifyView() -> some View {
        if let spotifyPath = model.major.spotifyPath {
            SpotifyView(urlString: spotifyPath)
                .frame(height: 232)
                .clipShape(.rect(cornerRadius: 12, style: .continuous))
                .padding(.horizontal, 20)
        }
    }
    
    @ViewBuilder
    func facebookView() -> some View {
        if let facebookWatchId = model.major.facebookWatchId {
            FacebookVideoView(videoURL: facebookWatchId)
                .frame(height: 190)
                .clipShape(.rect(cornerRadius: 12, style: .continuous))
                .padding(.horizontal, 20)
        }
    }
    
    @ViewBuilder
    func titleView() -> some View {
        VStack(alignment: .center, spacing: 0){
            Text(model.currentLocale == .estonian ? model.major.name : model.major.nameEn ?? model.major.name)
                .setFont(.title3, .semibold, .rounded)
                .multilineTextAlignment(.center)
            Text(model.major.level.label)
                .setFont(.body, .semibold, .rounded)
                .setColor(model.college.palette.base.gradient)
        }
        .maxWidth(alignment: .center)
        .padding(.horizontal, 16)
        .padding(.top, 8)
    }
    
    @ViewBuilder
    func tabView() -> some View {
        HStack {
            ForEach(model.availableTabs, id: \.self) { tab in
                tab.image
                    .setFont(.body, .regular, .rounded)
                    .maxSize()
                    .background {
                        if model.tabSelection == tab {
                            Capsule()
                                .fill(Color.white)
                                .matchedGeometryEffect(id: "TAB", in: animation)
                        }
                    }
                    .contentShape(.capsule)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.2)) { model.tabSelection = tab }
                    }
            }
        }
        .setColor(model.college.palette.base.gradient)
        .padding(2)
        .frame(height: 40)
        .background(TwoLayerCapsule(color: model.college.palette.base))
        .padding(.horizontal, 16)
        .offset(x: 0, y: 20)
        .zIndex(100)
    }
    
    @ViewBuilder
    func smallIconView() -> some View {
        CollegeView.LogoView(
            school: model.college,
            image: model.college.logoRef)
    }
    
    @ViewBuilder
    func loadingView() -> some View {
        Spacer()
        ProgressView()
            .progressViewStyle(.circular)
        Spacer()
    }
    
    @ViewBuilder
    func expandIcon() -> some View {
        Theme.Icons.expand
            .setFont(.title2, .medium, .rounded)
            .setColor(model.college.palette.base.gradient)
            .padding(4)
            .background(.regularMaterial)
            .clipShape(.rect(cornerRadius: 6, style: .continuous))
            .padding(16)
            .padding([.leading, .bottom])
            .contentShape(Rectangle())
            .onTapGesture(perform: model.presentMapView)
    }
    
    @ViewBuilder
    func placeholderPerson(size: CGFloat = 80, font: Font = .largeTitle) -> some View {
        Theme.Icons.person
            .setFont(font, .regular, .rounded)
            .setColor(model.college.palette.base.gradient)
            .frame(width: size, height: size)
            .background(model.college.palette.base.opacity(0.175))
            .clipShape(.circle)
    }
}
