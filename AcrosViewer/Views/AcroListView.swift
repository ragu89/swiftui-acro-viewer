//
//  AcroListView.swift
//  AcrosViewer
//
//  Created by Guye Raphael, I233 on 27.07.20.
//  Copyright © 2020 Guye Raphael. All rights reserved.
//

import SwiftUI

struct AcroListView: View {
    
    var acros: [Acro] = [
    Acro(id: 1, group: "back", position: "tucked", value: 4),
    Acro(id: 2, group: "back", position: "picked", value: 5),
    Acro(id: 3, group: "back", position: "straight", value: 6),
    Acro(id: 4, group: "back", position: "straight", numberTwist: 0.5, value: 7),
    Acro(id: 5, group: "back", position: "straight", numberTwist: 1, value: 8),
    Acro(id: 6, group: "front", position: "tucked", value: 4),
    Acro(id: 7, group: "front", position: "picked", value: 5),
    Acro(id: 8, group: "front", position: "straight", value: 6),
    Acro(id: 9, group: "front", position: "straight", numberTwist: 0.5, value: 7),
    Acro(id: 10, group: "front", position: "straight", numberTwist: 1, value: 8),
    Acro(id: 11, group: "front", customName: "1/2 turn front tucked", position: "tucked", numberTwist: 0.5, value: 6),
    Acro(id: 12, group: "picked", customName: "1/2 turn front picked", position: "tucked", numberTwist: 0.5, value: 7),
    Acro(id: 13, group: "straight", customName: "1/2 turn front straight", position: "tucked", numberTwist: 0.5, value: 8),
    ]
    
    var body: some View {
        List(acros) { acro in
            NavigationLink(destination: AcroDetailView(acro)) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(acro.name)
                        Text(acro.group)
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

struct AcroListView_Previews: PreviewProvider {
    static var previews: some View {
        AcroListView()
    }
}
