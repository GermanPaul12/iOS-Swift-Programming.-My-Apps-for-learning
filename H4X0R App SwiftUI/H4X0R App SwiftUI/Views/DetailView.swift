//
//  DetailView.swift
//  H4X0R App SwiftUI
//
//  Created by German Paul on 16.03.23.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(url: url)
    }
}



struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}



