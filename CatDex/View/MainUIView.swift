//
//  MainUIView.swift
//  CatDex
//
//  Created by Cicero Nascimento on 23/08/22.
//

import SwiftUI

struct MainUIView: View {
    @State var text: String = ""
    @State var littleCats:[CatsModel] = []

    let columnCount: Int = 2
    let gridSpacing: CGFloat = 16.0
    
    var body: some View {
        NavigationView{
            VStack{
                ScrollView(.vertical) {
                    LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing: gridSpacing), count: columnCount), spacing: gridSpacing) {
                        
                        ForEach(littleCats, id: \.self) { cats in
                            CardUIView(breeds: cats)
                                .frame(width: 100, height: 100)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("HotCat")
            .navigationViewStyle(.columns)
            .searchable(text: $text, placement: .navigationBarDrawer(displayMode: .always))
            .onAppear {
                Task {
//                    littleCats = await CatAPI.getAllBreesAsync()
                }

            }
        }
    }
}

struct MainUIView_Previews: PreviewProvider {
    static var previews: some View {
        MainUIView()
    }
}
