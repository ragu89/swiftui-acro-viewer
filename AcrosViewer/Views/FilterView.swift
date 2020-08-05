//
//  FilterView.swift
//  AcrosViewer
//
//  Created by Guye Raphael, I233 on 05.08.20.
//  Copyright © 2020 Guye Raphael. All rights reserved.
//

import SwiftUI

struct FilterView: View {
    
    @Binding public var isFilterDisplayed: Bool
    
    fileprivate let columns: [GridItem] = [
            GridItem(.fixed(150), spacing: 16),
            GridItem(.fixed(150), spacing: 16)
        ]
    
    var body: some View {
        NavigationView {
            VStack() {
                
                groupSelector()
                .navigationBarTitle("Filter", displayMode: .inline)
                .navigationBarItems(trailing: self.doneButton())
                
                Spacer()
            }.padding(.top, 20)
        }
    }
    
    fileprivate func groupSelector() -> some View {
        return LazyVGrid(columns: self.columns,
                         alignment: .center,
                         spacing: 16,
                         pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/) {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Back")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            })
            .frame(width: 150, height: 50, alignment: .center)
            .border(Color.accentColor, width: 1)
            
            Button(action: {}, label: {
                Text("Front")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            })
            .frame(width: 150, height: 50, alignment: .center)
            .border(Color.accentColor, width: 1)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Dive")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            })
            .frame(width: 150, height: 50, alignment: .center)
            .border(Color.accentColor, width: 1)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Rotation")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            })
            .frame(width: 150, height: 50, alignment: .center)
            .border(Color.accentColor, width: 1)
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

    @State static var isFilterDisplayed = false

    static var previews: some View {
        FilterView(isFilterDisplayed: $isFilterDisplayed)
    }
}
