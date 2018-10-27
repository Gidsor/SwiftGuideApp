//
//  PatternsTutorials.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 08/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import Foundation

class PatternsTutorials {
    
    var sections: [SectionTutorials] = []
    
    static let instance = PatternsTutorials()
    
    private init() {
        sections = SectionManager.loadSectionsFromJSON(from: "patterns_tutorials")
    }
    
}
