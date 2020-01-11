//
//  WebView.swift
//  News
//
//  Created by David Montes on 1/10/20.
//  Copyright © 2020 David Montes. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView(frame: .zero)

        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(request: URLRequest(url: URL(string: "https://learnappmaking.com/ex/lipsum.html")!))
    }
}
