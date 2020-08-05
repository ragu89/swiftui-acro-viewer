//
//  ContentView.swift
//  AcrosViewer
//
//  Created by Guye Raphael, I233 on 15.07.20.
//  Copyright © 2020 Guye Raphael. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State  var isFilterDisplayed = false
    
    var body: some View {
        NavigationView {
            AcroListView()
            .navigationBarItems(trailing: filterButton())
            .sheet(isPresented: $isFilterDisplayed) {
                FilterView(isFilterDisplayed: self.$isFilterDisplayed)
            }
        }
    }
    
    private func filterButton() -> some View {
        return Button(action: {
            self.isFilterDisplayed = true
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
