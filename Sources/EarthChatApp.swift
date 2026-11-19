import SwiftUI
import WebKit

@main
struct EarthChatApp: App {
    var body: some Scene {
        WindowGroup {
            EarthWebView()
                .ignoresSafeArea(.all)
                .preferredColorScheme(.dark)
        }
    }
}

struct EarthWebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true
        let webView = WKWebView(frame: .zero, configuration: config)
        webView.isOpaque = false
        webView.backgroundColor = .black
        if let url = URL(string: "https://earth-chat.pages.dev") {
            webView.load(URLRequest(url: url))
        }
        return webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
