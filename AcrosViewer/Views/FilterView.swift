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
    @ObservedObject fileprivate var groupBackSelector = GroupSelectorModel(text: "Back", action: { })
    @ObservedObject fileprivate var groupFrontSelector = GroupSelectorModel(text: "Front", action: {})
    @ObservedObject fileprivate var groupDiveSelector = GroupSelectorModel(text: "Dive", action: {})
    @ObservedObject fileprivate var groupRotationSelector = GroupSelectorModel(text: "Rotation", action: {})
    
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
        return VStack(alignment: .center, spacing: 10) {
            HStack {
                Button(action:{ self.groupBackSelector.isSelected.toggle() }, label: {
                    Text(groupBackSelector.text)
                        .foregroundColor(self.groupBackSelector.isSelected ? Color.white : Color.accentColor)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                })
                    .frame(width: 150, height: 50, alignment: .center)
                    .border(Color.accentColor, width: 1)
                    .background(self.groupBackSelector.isSelected ? Color.accentColor : Color.white)
                
                Button(action: { self.groupFrontSelector.isSelected.toggle() }, label: {
                    Text(groupFrontSelector.text)
                        .foregroundColor(self.groupFrontSelector.isSelected ? Color.white : Color.accentColor)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                })
                    .frame(width: 150, height: 50, alignment: .center)
                    .border(Color.accentColor, width: 1)
                    .background(self.groupFrontSelector.isSelected ? Color.accentColor : Color.white)
            }
            
            HStack {
                Button(action: { self.groupDiveSelector.isSelected.toggle() }, label: {
                    Text(groupDiveSelector.text)
                        .foregroundColor(self.groupDiveSelector.isSelected ? Color.white : Color.accentColor)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                })
                    .frame(width: 150, height: 50, alignment: .center)
                    .border(Color.accentColor, width: 1)
                    .background(self.groupDiveSelector.isSelected ? Color.accentColor : Color.white)
                
                Button(action:{ self.groupRotationSelector.isSelected.toggle() }, label: {
                    Text(groupRotationSelector.text)
                        .foregroundColor(self.groupRotationSelector.isSelected ? Color.white : Color.accentColor)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                })
                    .frame(width: 150, height: 50, alignment: .center)
                    .border(Color.accentColor, width: 1)
                    .background(self.groupRotationSelector.isSelected ? Color.accentColor : Color.white)
            }
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

fileprivate class GroupSelectorModel: ObservableObject {
    var text: String
    var action: () -> Void
    @Published public var isSelected: Bool
    
    init(text: String, action: @escaping () -> Void) {
        self.text = text
        self.action = action
        self.isSelected = false
    }
}

struct FilterView_Previews: PreviewProvider {

    @State static var isFilterDisplayed = false

    static var previews: some View {
        FilterView(isFilterDisplayed: $isFilterDisplayed)
    }
}
