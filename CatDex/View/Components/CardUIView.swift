//
//  CardUIView.swift
//  CatDex
//
//  Created by Cicero Nascimento on 23/08/22.
//

import SwiftUI

struct CardUIView: View {

    var breeds: CatsModel

    private var url: URL {
        breeds.imageURL ?? URL(string: "https://25.media.tumblr.com/tumblr_m2frwgKzN01r6b7kmo1_500.jpg")!
    }
   
    var body: some View {
//        GeometryReader { proxy in
        ZStack {
            AsyncImage(
                url: url,
                scale: 1,
                content: { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
//                        .frame(width: 100, height: 100)
                        .clipped()
                },
                placeholder: {
                    Color.gray
                }
            )
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .aspectRatio(1, contentMode: .fill)
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text(breeds.name)
                    Spacer()
                }
                .padding(.vertical, 10)
                .background(.regularMaterial)
            }
        }
        .background(Color.init(red: 196 / 255, green: 238 / 255, blue: 255 / 255))
        .cornerRadius(20)
    }
}

//struct CardUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        let cats = CatsModel(id: "1", name: "Nome Gato 1", image: ImageCat(id: "",width: 1, height: 1 ,url: ""))
//        CardUIView(breeds: cats).previewLayout(.sizeThatFits)
//    }
//}
