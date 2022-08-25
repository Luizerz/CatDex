//
//  CatsModel.swift
//  CatDex
//
//  Created by Cicero Nascimento on 23/08/22.
//

import Foundation



struct ImageCat : Codable, Hashable {
    let id: String
    let width: Int
    let height: Int
    let url: String?

}

struct CatsModel : Codable, Hashable, Equatable {
    let id: String
    let name: String
    let image: ImageCat?

    var imageURL: URL {
        URL(string: self.image!.url!)!
    }
}

