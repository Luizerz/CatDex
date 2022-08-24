//
//  MainUIView.swift
//  CatDex
//
//  Created by Cicero Nascimento on 23/08/22.
//

import SwiftUI

struct MainUIView: View {
    @State var text: String = ""
    var littleCats = mockedCats().cats
    
    var body: some View {
        
        let columnCount: Int = 2
        let gridSpacing: CGFloat = 16.0
        
        NavigationView{
            VStack{
                
                ScrollView(.vertical) {
                    LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing: gridSpacing), count: columnCount), spacing: gridSpacing) {
                        
                        ForEach(littleCats, id: \.self) { cats in
                            CardUIView(breeds: cats)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("HotCat")
            .navigationViewStyle(.columns)
            .searchable(text: $text, placement: .navigationBarDrawer(displayMode: .always))
        }
    }
}

struct MainUIView_Previews: PreviewProvider {
    static var previews: some View {
        MainUIView()
    }
}
