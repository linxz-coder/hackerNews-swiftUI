//
//  WebView.swift
//  H4XOR-news-swiftUI
//
//  Created by 林晓中 on 2024/12/3.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable{
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let safeString = urlString else {return}
        guard let url = URL(string:safeString) else {return}
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
