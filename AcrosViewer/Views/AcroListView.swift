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
    Acro(id: 1, group: "back", category: "tuck", value: 4),
    Acro(id: 2, group: "back", category: "pick", value: 5),
    Acro(id: 3, group: "back", category: "straight", value: 6),
    Acro(id: 4, group: "back", category: "straight", numberTwist: 0.5, value: 7),
    Acro(id: 5, group: "back", category: "straight", numberTwist: 1, value: 8),
    Acro(id: 6, group: "front", category: "tuck", value: 4),
    Acro(id: 7, group: "front", category: "pick", value: 5),
    Acro(id: 8, group: "front", category: "straight", value: 6),
    Acro(id: 9, group: "front", category: "straight", numberTwist: 0.5, value: 7),
    Acro(id: 10, group: "front", category: "straight", numberTwist: 1, value: 8),
    Acro(id: 11, group: "front", customName: "1/2 turn front tucked", category: "tuck", numberTwist: 0.5, value: 6),
    Acro(id: 12, group: "pick", customName: "1/2 turn front picked", category: "tuck", numberTwist: 0.5, value: 7),
    Acro(id: 13, group: "straight", customName: "1/2 turn front straight", category: "tuck", numberTwist: 0.5, value: 8),
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
