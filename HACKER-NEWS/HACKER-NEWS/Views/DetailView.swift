//
//  DetailView.swift
//  HACKER-NEWS
//
//  Created by Cryton Sibanda on 2020/05/26.
//  Copyright © 2020 Cryton Sibanda. All rights reserved.
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
        DetailView(url: "https://www.google.com")
    }
}



