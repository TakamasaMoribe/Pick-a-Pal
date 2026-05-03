//
//  ContentView.swift
//  Pick-a-Pal
//
//  Created by 森部高昌 on 2026/05/03.
//

import SwiftUI

struct ContentView: View {
    @State private var names: [String] = ["Elisha", "Andre", "Jasmine", "Po-Chun"]
    
    var body: some View {
        VStack {
            List {
                ForEach(names, id: \.description) { name in
                    Text(name)
                    
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
