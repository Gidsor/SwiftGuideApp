//
//  SectionTutorials.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 25/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

enum SectionFields: String {
    case header = "header"
    case tutorials = "tutorials"
}

class SectionTutorials {
    
    var header: String
    var tutorials: [Tutorial]
    
    init(header: String, tutorials: [Tutorial]) {
        self.header = header
        self.tutorials = tutorials
    }
    
    init() {
        header = ""
        tutorials = []
    }
}
