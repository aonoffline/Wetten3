//
//  SimpleWebView.swift
//  Wetten
//
//  Created by vierklee on 17.04.24.
//

import Foundation
import SwiftUI
import WebKit

struct SimpleWebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView  {
        let wkwebView = WKWebView()
        wkwebView.load(URLRequest(url: url));
        wkwebView.isOpaque = false;
        wkwebView.backgroundColor = UIColor.clear;
        
        return wkwebView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleWebView(url: URL(string: "https://vierklee-wetten.com")!)
            .preferredColorScheme(.dark)
        
    }
}
