//
//  ContentView.swift
//  AcrosViewer
//
//  Created by Guye Raphael, I233 on 15.07.20.
//  Copyright © 2020 Guye Raphael. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var acros: [Acro] = [
        Acro(id: 1, name: "tuck", category: "back", value: 4),
        Acro(id: 2, name: "pick", category: "back", value: 5),
        Acro(id: 3, name: "straight", category: "back", value: 6),
    ]
    
    var body: some View {
        NavigationView {
            List(acros) { acro in
                NavigationLink(destination: AcroDetailView(acro)) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(acro.name)
                            Text(acro.category)
                                .font(.caption)
                        }
                        Spacer()
                        Text(String(acro.value))
                        Text("pt.")
                    }
                }
            }
            .navigationBarTitle("Acros Viewer")
        }
    }
}

struct AcroDetailView: View {
    
    let acro: Acro
    
    init(_ acro: Acro) {
        self.acro = acro
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Spacer()
            Text(acro.category).font(.subheadline)
            Text(acro.name).font(.headline)
            Text(String(acro.value)).font(.subheadline)
            Spacer()
            Spacer()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
