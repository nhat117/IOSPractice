//
//  DetailsView.swift
//  h4xor
//
//  Created by Nhat Bui Minh on 04/06/2022.
//

import SwiftUI

struct DetailsView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(url: "https://google.com")
    }
}


