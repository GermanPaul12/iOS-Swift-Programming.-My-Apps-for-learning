//
//  PostData.swift
//  H4X0R App SwiftUI
//
//  Created by German Paul on 16.03.23.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let title: String
    let points: Int
    let url: String?
    let objectID: String
}
