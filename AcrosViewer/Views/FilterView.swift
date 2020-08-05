//
//  FilterView.swift
//  AcrosViewer
//
//  Created by Guye Raphael, I233 on 05.08.20.
//  Copyright © 2020 Guye Raphael. All rights reserved.
//

import SwiftUI

struct FilterView: View {
    
    @Binding var isFilterDisplayed: Bool
    
    var body: some View {
        NavigationView {
            Text("This is the filter page")
                .navigationBarTitle("Filter", displayMode: .inline)
                .navigationBarItems(trailing: self.doneButton())
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

struct FilterView_Previews: PreviewProvider {
    @State static var b = false
    static var previews: some View {
        FilterView(isFilterDisplayed: $b)
    }
}
