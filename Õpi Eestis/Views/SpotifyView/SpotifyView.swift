import SwiftUI
import WebKit

struct SpotifyView: UIViewRepresentable {
    let urlString: String
    
    // JavaScript code to stretch the iframe
    private let loadedJavaScript: String = """
               var iframe = document.querySelector('iframe');
               if (iframe) {
                   iframe.style.height = "100vh";
                   iframe.parentNode.style.height = "100%";
                   
                   // New: Try to target potential elements causing white spaces
                   var spotifyElements = document.querySelectorAll('*');
                   for (var elem of spotifyElements) {
                       if (getComputedStyle(elem).backgroundColor === 'white') {
                           elem.style.backgroundColor = 'blue';
                       }
                   }
               
                   document.body.style.margin = "0";
                   document.body.style.height = "100%";
               }
               """
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.navigationDelegate = context.coordinator
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, WKNavigationDelegate {
        var parent: SpotifyView

        init(_ parent: SpotifyView) {
            self.parent = parent
        }

        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
//            webView.evaluateJavaScript(parent.loadedJavaScript, completionHandler: nil)
        }
    }
}
