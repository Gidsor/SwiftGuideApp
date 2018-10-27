//
//  SwiftTutorials.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 08/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import Foundation

class SwiftTutorials {
    
    var sections: [SectionTutorials] = []
    
    static let instance = SwiftTutorials()
    
    private init() {
        sections = SectionManager.loadSectionsFromJSON(from: "swift_tutorials")
    }
    
}
