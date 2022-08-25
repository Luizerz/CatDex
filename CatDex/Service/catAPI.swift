//
//  APIService.swift
//  CatDex
//
//  Created by Cicero Nascimento on 23/08/22.
//

import Foundation
import Alamofire

class CatAPI {
    static func getAllBreeds(completion: @escaping ([CatsModel]) -> Void) {
        let url = "https://api.thecatapi.com/v1/breeds"
        let decoder = JSONDecoder()
        let _ : [CatsModel] = []
        AF
            .request(url)
            .validate(statusCode: 200..<300)
            .responseDecodable(of: [CatsModel].self, decoder: decoder) {
                response in
                switch response.result{
                case .success(let cats):
                   completion(cats)
                case .failure(let error):
                    print(error)
                }
            }
    }

    static func getAllBreesAsync() async -> [CatsModel] {
        let url = "https://api.thecatapi.com/v1/breeds"
        let decoder = JSONDecoder()
        let cats: [CatsModel] = try! await AF
            .request(url)
            .validate(statusCode: 200..<300)
            .serializingDecodable([CatsModel].self, automaticallyCancelling: true, decoder: decoder)
            .value
        print(cats)
        return cats
    }
}

struct MockedCats {
    let cats: [CatsModel] = [
        CatsModel(id: "1", name: "Nome Gato 1", image: ImageCat(id: "",width: 1, height: 1 ,url: "")),
        CatsModel(id: "2", name: "Nome Gato 2", image: ImageCat(id: "",width: 1, height: 1 ,url: "")),
        CatsModel(id: "3", name: "Nome Gato 3", image: ImageCat(id: "",width: 1, height: 1 ,url: "")),
        CatsModel(id: "4", name: "Nome Gato 4", image: ImageCat(id: "",width: 1, height: 1 ,url: ""))
    ]
}


