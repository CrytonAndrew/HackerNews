//
//  PostData.swift
//  HACKER-NEWS
//
//  Created by Cryton Sibanda on 2020/05/26.
//  Copyright © 2020 Cryton Sibanda. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

//Decodes our json data for the four properties
struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let url: String?
    let title: String
}
