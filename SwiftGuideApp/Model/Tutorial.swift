//
//  Tutorial.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 02/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import Foundation

class Tutorial {
    var headerText: String = ""
    var name: String = ""
    var pathMark: String = ""
    
    init(headerText: String, name: String, pathMark: String) {
        self.headerText = headerText
        self.name = name
        self.pathMark = pathMark
    }
}
