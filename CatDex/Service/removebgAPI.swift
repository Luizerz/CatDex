//
//  removebgAPI.swift
//  CatDex
//
//  Created by Cicero Nascimento on 24/08/22.
//

import Foundation
import Alamofire
import UIKit


class removebgAPI {
    
    let urlRemoveBG: String = "https://api.remove.bg/v1.0/removebg"
    
    
    func removeImage(removebgModel: RemovebgModel){

        AF.request(
            URL(string: urlRemoveBG)!,
          method: .post,
          parameters: ["image_url": "https://www.remove.bg/example.jpg"],
          encoding: URLEncoding(),
          headers: [
            "X-Api-Key": "6ygxVHuNLtu9MRuxCr8ygz1A"
          ]
        )
        .responseData { imageResponse in
          guard let imageData = imageResponse.data,
            let image = UIImage(data: imageData)
          else { return }

          let imageWithouBG = image
        }
    }
}
