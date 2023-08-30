import SwiftUI
import Combine

class ImageCache: ObservableObject {
    private var cache: NSCache<NSURL, UIImage> = NSCache()

    func insertImage(_ image: UIImage?, for url: NSURL) {
        guard let image = image else { return }
        cache.setObject(image, forKey: url)
    }

    func image(for url: NSURL) -> UIImage? {
        return cache.object(forKey: url)
    }
}

struct CachedAsyncImage: View {
    @StateObject private var loader: ImageLoader
    @EnvironmentObject var imageCache: ImageCache
    let placeholder: Image
    let configuration: (Image) -> Image

    init(
        url: NSURL,
        @ViewBuilder configuration: @escaping (Image) -> Image = { $0 },
        @ViewBuilder placeholder: () -> Image
    ) {
        self.placeholder = placeholder()
        self.configuration = configuration
        _loader = StateObject(wrappedValue: ImageLoader(url: url))
    }

    var body: some View {
        selectImage()
            .onAppear(perform: loader.load)
    }

    @ViewBuilder
    private func selectImage() -> some View {
        if let image = loader.image {
            configuration(Image(uiImage: image))
        } else {
            placeholder
        }
    }
}

class ImageLoader: ObservableObject {
    @Published var image: UIImage?
    private let url: NSURL
    @EnvironmentObject var cache: ImageCache
    private var cancellable: AnyCancellable?

    init(url: NSURL) {
        self.url = url
    }

    deinit {
        cancellable?.cancel()
    }

    func load() {
        if let cachedImage = cache.image(for: url) {
            image = cachedImage
            return
        }
        
        cancellable = URLSession.shared.dataTaskPublisher(for: url as URL)
            .map { UIImage(data: $0.data) }
            .receive(on: DispatchQueue.main)
            .sink(
                receiveCompletion: { _ in },
                receiveValue: { [weak self] in
                    self?.cache.insertImage($0, for: self?.url ?? NSURL())
                    self?.image = $0
                }
            )
    }
}
