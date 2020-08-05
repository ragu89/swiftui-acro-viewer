//
//  ContentView.swift
//  AcrosViewer
//
//  Created by Guye Raphael, I233 on 15.07.20.
//  Copyright © 2020 Guye Raphael. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var isFilterDisplayed = false
    
    var body: some View {
        NavigationView {
            AcroListView()
            .navigationBarItems(trailing: filterButton())
            .sheet(isPresented: $isFilterDisplayed) {
                self.filterPage()
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
    
    private func filterPage() -> some View {
        return NavigationView {
            Text("This is the filter page")
                .navigationBarTitle("Filter", displayMode: .inline)
                .navigationBarItems(trailing: doneButton())
        }
    }
    
    private func doneButton() -> some View {
        return Button(action: {
            self.isFilterDisplayed = false
        }) {
            Text("Done")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
