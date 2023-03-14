//
//  WebView.swift
//  
//
//  Created by Kostiantyn Nevinchanyi on 3/14/23.
//

import SwiftUI

struct WebView: View {
    
    @StateObject var viewModel = WebViewModel()
    
    var body: some View {
        WrapperView(view: viewModel.webView)
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView()
    }
}
