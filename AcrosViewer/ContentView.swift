//
//  ContentView.swift
//  AcrosViewer
//
//  Created by Guye Raphael, I233 on 15.07.20.
//  Copyright © 2020 Guye Raphael. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            AcroListView()
            .navigationBarItems(trailing: filterButton())
        }
    }
    
    private func filterButton() -> some View {
        return Button(action: {
            NSLog("clicked")
        }) {
            Image(systemName: "line.horizontal.3.decrease.circle")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
