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
    var customName: String?
    var group: String
    var category: String
    var numberTwist: Double = 0
    var value: Int
    
    var name: String {
        get {
            if (customName != nil) {
                return customName!
            } else {
                let basicName = category
                return numberTwist == 0 ? basicName : basicName + " with \(numberTwist) twist"
            }
        }
    }
}
