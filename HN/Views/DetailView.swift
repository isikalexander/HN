//
//  DetailView.swift
//  HN
//
//  Created by Steffan Harmaajarvi on 12.06.2021.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(URLString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

