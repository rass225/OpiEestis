import SwiftUI
import WebKit

struct VimeoView: UIViewRepresentable {
    let videoID: String
    let color: Color

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.navigationDelegate = context.coordinator
        webView.scrollView.contentInset = .zero
        webView.scrollView.scrollIndicatorInsets = .zero
        webView.clipsToBounds = true
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL(string: "https://player.vimeo.com/video/\(videoID)?byline=false&responsive=true&title=false&colors=[FFFFFF, 00ADEF, \(color.toHex()?.dropFirst() ?? "DD3224"), 000000]") else { return }

        let request = URLRequest(url: url)
        uiView.load(request)
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, WKNavigationDelegate {
        var parent: VimeoView

        init(_ parent: VimeoView) {
            self.parent = parent
        }
    }
}
