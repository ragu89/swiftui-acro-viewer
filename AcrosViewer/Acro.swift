//
//  Acro.swift
//  AcrosViewer
//
//  Created by Guye Raphael, I233 on 15.07.20.
//  Copyright © 2020 Guye Raphael. All rights reserved.
//

import Foundation

struct Acro : Identifiable {
    var id: Int
    var group: String
    var customName: String?
    var position: String
    var numberTwist: Double = 0
    var value: Int
    
    var name: String {
        get {
            if (customName != nil) {
                return customName!
            } else {
                let basicName = position
                return numberTwist == 0 ? basicName : basicName + " with \(numberTwist) twist"
            }
        }
    }
}
