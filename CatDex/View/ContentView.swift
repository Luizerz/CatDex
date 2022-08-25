//
//  ContentView.swift
//  CatDex
//
//  Created by Luiz Sena on 22/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
        Button(action: {
            Task {
                await CatAPI.getAllBreesAsync()
            }
        }, label: {
            Text("AOBA")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
