//
//  InfoView.swift
//  GermanCard
//
//  Created by German Paul on 16.03.23.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50.0)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: imageName).foregroundColor(.green)
                    Text(text).foregroundColor(.black)
                })
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+49 176 666666", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
