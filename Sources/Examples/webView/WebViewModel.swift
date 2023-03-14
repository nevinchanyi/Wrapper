//
//  WebViewModel.swift
//  
//
//  Created by Kostiantyn Nevinchanyi on 3/14/23.
//

import Foundation
import WebKit


class WebViewModel: ObservableObject {
    
    let webView: WKWebView
    
    init(webView: WKWebView = WKWebView()) {
        self.webView = webView
        Task {
            await loadWebsite()
        }
    }
    
    func loadWebsite() async {
        guard let url = URL(string: "https://mileafy.com") else { return }
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
