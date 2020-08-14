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
    private let groupBackSelector = GroupSelectorModel(text: "Back", action: { })
    private let groupFrontSelector = GroupSelectorModel(text: "Front", action: {})
    private let groupDiveSelector = GroupSelectorModel(text: "Dive", action: {})
    private let groupRotationSelector = GroupSelectorModel(text: "Rotation", action: {})
    
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
                GroupSelectorButton(groupSelector: self.groupBackSelector)
                GroupSelectorButton(groupSelector: self.groupFrontSelector)
            }
            
            HStack {
                GroupSelectorButton(groupSelector: self.groupDiveSelector)
                GroupSelectorButton(groupSelector: self.groupRotationSelector)
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

class GroupSelectorModel: ObservableObject {
    var text: String
    var action: () -> Void
    @Published public var isSelected: Bool
    
    init(text: String, action: @escaping () -> Void, isSelected: Bool = false) {
        self.text = text
        self.action = action
        self.isSelected = isSelected
    }
}

struct FilterView_Previews: PreviewProvider {

    @State static var isFilterDisplayed = false

    static var previews: some View {
        FilterView(isFilterDisplayed: $isFilterDisplayed)
    }
}
