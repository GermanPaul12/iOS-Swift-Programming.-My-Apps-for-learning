//
//  WebView.swift
//  H4X0R App SwiftUI
//
//  Created by German Paul on 17.03.23.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    typealias UIViewType = WKWebView
    
    let url: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let safeURL = url {
            if let safeurl = URL(string: safeURL) {
                let request = URLRequest(url: safeurl)
                uiView.load(request)
            }
        }
    }
    
}
