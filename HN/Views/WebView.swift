//
//  WebView.swift
//  HN
//
//  Created by Steffan Harmaajarvi on 13.06.2021.
//

import Foundation
import WebKit
import SwiftUI


struct WebView: UIViewRepresentable {
    
    var URLString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        if let s = URLString {
            
            if let url = URL(string: s) {
                
                let request = URLRequest(url: url)
                uiView.load(request)
                
            }
            
        }
        
    }
    
    
}
 
