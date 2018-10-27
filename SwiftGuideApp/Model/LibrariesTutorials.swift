//
//  LibrariesTutorials.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 08/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import Foundation

class LibrariesTutorials {
    
    var sections: [SectionTutorials] = []
    
    static let instance = LibrariesTutorials()
    
    private init() {
        sections = SectionManager.loadSectionsFromJSON(from: "libraries_tutorials")
    }
    
}
