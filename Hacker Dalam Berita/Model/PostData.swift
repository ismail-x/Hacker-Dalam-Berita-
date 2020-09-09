//
//  PostData.swift
//  Hacker Dalam Berita
//
//  Created by Ismail . on 19/08/20.
//  Copyright © 2020 Ismail . All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}


struct Post: Decodable, Identifiable {
    var id: String{
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
