//
//  OtherTutorials.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 08/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import Foundation

class OtherTutorials {
    
    var sections: [SectionTutorials] = []
    
    static let instance = OtherTutorials()
    
    private init() {
        sections = SectionManager.loadSectionsFromJSON(from: "other_tutorials")
    }
    
}
