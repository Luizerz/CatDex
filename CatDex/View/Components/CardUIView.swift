//
//  CardUIView.swift
//  CatDex
//
//  Created by Cicero Nascimento on 23/08/22.
//

import SwiftUI

struct CardUIView: View {
    var body: some View {
        ZStack{
            VStack{
                Image("template-gato")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .padding(20)
                    
                Text("Raça do gato")
                    .padding(.bottom, 30)
            }
        }
        .background(Color.init(red: 196 / 255, green: 238 / 255, blue: 255 / 255))
        .cornerRadius(20)
    }
}

struct CardUIView_Previews: PreviewProvider {
    static var previews: some View {
        CardUIView().previewLayout(.sizeThatFits)
    }
}
