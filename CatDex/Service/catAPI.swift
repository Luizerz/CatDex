//
//  APIService.swift
//  CatDex
//
//  Created by Cicero Nascimento on 23/08/22.
//

import Foundation


//class catAPI {
//    func getAllBreeds() -> [CatsModel] {
//        return [CatsModel(id: "1", name: "Nome Gato 1"), CatsModel(id: "2", name: "Nome Gato 2"), CatsModel(id: "3", name: "Nome Gato 3"), CatsModel(id: "4", name: "Nome Gato 4")]
//    }
//}

struct mockedCats {
    let cats: [CatsModel] = [
        CatsModel(id: "1", name: "Nome Gato 1", image: "template-gato"),
        CatsModel(id: "2", name: "Nome Gato 2", image: "template-gato-1"),
        CatsModel(id: "3", name: "Nome Gato 3", image: "template-gato-2"),
        CatsModel(id: "4", name: "Nome Gato 4", image: "template-gato-3")
    ]
}
