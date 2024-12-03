//
//  DetailView.swift
//  H4XOR-news-swiftUI
//
//  Created by 林晓中 on 2024/12/3.
//

import SwiftUI


struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.baidu.com")
}


