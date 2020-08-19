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
    @State private var hasTwist = false
    @State private var roundIdSelected = 0
    private let groupBackSelector = GroupSelectorModel(text: "Back", action: { })
    private let groupFrontSelector = GroupSelectorModel(text: "Front", action: {})
    private let groupDiveSelector = GroupSelectorModel(text: "Dive", action: {})
    private let groupRotationSelector = GroupSelectorModel(text: "Rotation", action: {})
    
    init(isFilterDisplayed: Binding<Bool>) {
        self._isFilterDisplayed = isFilterDisplayed
        UISegmentedControl.appearance().selectedSegmentTintColor = UIView().tintColor
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIView().tintColor!], for: .normal)
    }
    
    var body: some View {
        NavigationView {
            Form {
                
                Section() {
                    
                    VStack {

                        Picker(selection: $roundIdSelected, label: Text("Round")) {
                            Text("Qualifications").tag(0)
                            Text("Finals round").tag(1)
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        .padding(.top, 20)
                        .padding(.leading, 15)
                        .padding(.trailing, 15)
                        
                        HStack {
                            Spacer()
                            groupSelector()
                                .navigationBarTitle("Filter", displayMode: .inline)
                                .navigationBarItems(trailing: self.doneButton())
                                .padding(.top, 20)
                                .padding(.bottom, 20)
                            Spacer()
                        }
                        }
                }
                
                Section() {
                    Toggle(isOn: $hasTwist) {
                        Text("Acros containing twists")
                    }
                }
                
                Section(header: Text("Number of points")) {
                    Text("todo")
                }
            }
            .buttonStyle(BorderlessButtonStyle())
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
