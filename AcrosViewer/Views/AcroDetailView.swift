//
//  AcroDetailView.swift
//  AcrosViewer
//
//  Created by Guye Raphael, I233 on 27.07.20.
//  Copyright © 2020 Guye Raphael. All rights reserved.
//

import SwiftUI

struct AcroDetailView: View {
    
    let acro: Acro
    
    init(_ acro: Acro) {
        self.acro = acro
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Spacer()
            Text(acro.group).font(.subheadline)
            Text(acro.name).font(.headline)
//            Text("Nb of twist(s): " + acro.numberTwist).font(.headline)
            Text(String(acro.value) + " points").font(.subheadline)
            Spacer()
            Spacer()
            Spacer()
        }
        .navigationBarTitle("Acro detail", displayMode: .inline)
    }
}

struct AcroDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AcroDetailView(Acro(id: 1, group: "tucked", position: "back", value: 4))
    }
}
