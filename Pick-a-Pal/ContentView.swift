//
//  ContentView.swift
//  Pick-a-Pal
//
//  Created by 森部高昌 on 2026/05/03.
//

import SwiftUI

struct ContentView: View {
    @State private var names: [String] = ["Elisha", "Andre", "Jasmine", "Po-Chun"]
    @State private var nameToAdd = ""
    
    var body: some View {
        VStack {
            List {
                ForEach(names, id: \.description) { name in
                    Text(name).listRowSeparatorTint(.blue)//青い枠線
                }
                Text("").listRowSeparatorTint(.blue)//青い枠線
            }
            
            TextField("Add a name", text: $nameToAdd)
                .background(Color.blue.opacity(0.5)) .cornerRadius(5)
                .foregroundColor(.black)
                .frame(width: 350, height: 100) // 幅200、高さ100に固定
            
                .autocorrectionDisabled(true)
                .onSubmit {
                    if !nameToAdd.isEmpty {
                        names.append(nameToAdd)
                        nameToAdd = ""
                    }
                    //nameToAdd = ""
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
