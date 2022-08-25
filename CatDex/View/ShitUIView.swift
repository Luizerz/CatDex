//
//  ShitUIView\.swift
//  CatDex
//
//  Created by Luiz Sena on 25/08/22.
//

import SwiftUI

struct ShitUIView_: View {
    @State var littleCats:[CatsModel] = []
    var body: some View {
        VStack {
            Text("sfdsf")
                .onAppear {
                    Task {
                        littleCats = await CatAPI.getAllBreesAsync()
                    }
                }

            AsyncImage(url: littleCats.randomElement()?.imageURL)
                .frame(width: 300, height: 300)
        }


    }
}

struct ShitUIView__Previews: PreviewProvider {
    static var previews: some View {
        ShitUIView_()
    }
}
