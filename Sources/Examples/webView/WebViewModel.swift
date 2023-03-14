//
//  WebViewModel.swift
//  
//
//  Created by Kostiantyn Nevinchanyi on 3/14/23.
//

import Foundation
import WebKit

class WebViewModel: NSObject, ObservableObject {
        
    let webView = WKWebView()
    
    override init() {
        super.init()
        webView.navigationDelegate = self
        Task {
            await loadWebsite()
        }
    }
    
    func loadWebsite() async {
        guard let url = URL(string: "https://mileafy.com") else { return }
        let request = URLRequest(url: url)
        await webView.load(request)
    }
}

extension WebViewModel: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print(navigation)
    }
}

