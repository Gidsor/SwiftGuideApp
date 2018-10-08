//
//  LibrariesTutorials.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 08/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import Foundation

class LibrariesTutorials {
    var tutorials: [[Tutorial]] = []
    
    static let instance = LibrariesTutorials()
    
    private init() {
        createTutorials()
    }
    
    private func createTutorials() {
    }
    
}
