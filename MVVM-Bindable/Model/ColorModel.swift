//
//  ColorModel.swift
//  MVVM-KVO-Swift
//
//  Created by Dhaval Trivedi on 16/01/20.
//  Copyright © 2020 Dhaval Trivedi. All rights reserved.
//

import UIKit

class ColorModel {
    
    var color: UIColor!
    var index: Int!
    var name: String!
    
    init(color: UIColor, index: Int, name: String) {
        self.color = color
        self.index = index
        self.name = name
    }
}
