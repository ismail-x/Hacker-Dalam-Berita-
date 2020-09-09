//
//  DetailView.swift
//  Hacker Dalam Berita
//
//  Created by Ismail . on 23/08/20.
//  Copyright © 2020 Ismail . All rights reserved.
//

import SwiftUI


struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://google.com")
    }
}

