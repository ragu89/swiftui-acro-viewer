//
//  GroupSelectorButton.swift
//  AcrosViewer
//
//  Created by Guye Raphael, I233 on 14.08.20.
//  Copyright © 2020 Guye Raphael. All rights reserved.
//

import SwiftUI

struct GroupSelectorButton: View {
    
    @ObservedObject var groupSelector: GroupSelectorModel
    
    var body: some View {
        Button(action:{self.groupSelector.isSelected.toggle() }, label: {
            Text(self.groupSelector.text)
                .foregroundColor(self.groupSelector.isSelected ? Color.white : Color.accentColor)
                .padding(.all, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        })
            .frame(width: 150, height: 50, alignment: .center)
            .border(Color.accentColor, width: 1)
            .background(self.groupSelector.isSelected ? Color.accentColor : Color.white)
    }
}

struct GroupSelectorButton_Previews: PreviewProvider {
    static var groupBackSelector = GroupSelectorModel(text: "Back", action: { })
    static var groupFrontSelector = GroupSelectorModel(text: "Front", action: {}, isSelected: true)
    static var previews: some View {
        VStack(spacing: 20) {
            GroupSelectorButton(groupSelector: groupBackSelector)
            GroupSelectorButton(groupSelector: groupFrontSelector)
        }
    }
}
