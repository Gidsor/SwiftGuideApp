//
//  LibrariesTutorials.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 08/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//


class LibrariesTutorials {
    var tutorials: [[Tutorial]] = []
    
    static let instance = LibrariesTutorials()
    
    private init() {
        createTutorials()
    }
    
    private func createTutorials() {
        tutorials.append(createRxSwiftTutorials())
    }
    
    private func createRxSwiftTutorials() -> [Tutorial] {
        let header = "RxSwift"
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: header, name: "О библиотеке", pathMark: "Xcode", image: "xcode-icon"))
        
        return tutorials
    }
    
}
