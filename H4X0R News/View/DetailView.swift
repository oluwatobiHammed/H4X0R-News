//
//  DetailView.swift
//  H4X0R News
//
//  Created by user on 11/10/2019.
//  Copyright © 2019 Oladipupo Oluwatobi. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.goggle.com")
    }
}


