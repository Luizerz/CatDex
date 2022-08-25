//
//  CardUIView.swift
//  CatDex
//
//  Created by Cicero Nascimento on 23/08/22.
//

import SwiftUI

struct CardUIView: View {

    var breeds: CatsModel
    var teste: URL {
        breeds.imageURL
    }
    var body: some View {
//        ZStack{
//            VStack{
                AsyncImage(url: breeds.imageURL)
//                Text(breeds.name)
//                    .padding(.bottom, 30)
//            }
//        }
//        .background(Color.init(red: 196 / 255, green: 238 / 255, blue: 255 / 255))
//        .cornerRadius(20)
    }
}

struct CardUIView_Previews: PreviewProvider {
    static var previews: some View {
        let cats = CatsModel(id: "1", name: "Nome Gato 1", image: ImageCat(id: "",width: 1, height: 1 ,url: ""))
        CardUIView(breeds: cats).previewLayout(.sizeThatFits)
    }
}
