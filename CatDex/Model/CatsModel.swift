//
//  CatsModel.swift
//  CatDex
//
//  Created by Cicero Nascimento on 23/08/22.
//

import Foundation



struct ImageCat : Codable, Hashable {
    let id: String?
    let url: String?

}

struct CatsModel : Codable, Hashable, Equatable {
    let id: String
    let name: String
    let image: ImageCat?

    var imageURL: URL? {
        if let urlString = image?.url, let url = URL(string: urlString) {
            return url
        }
        return nil
    }
}
