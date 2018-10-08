//
//  OtherTutorials.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 08/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import Foundation

class OtherTutorials {
    var tutorials: [[Tutorial]] = []
    
    static let instance = OtherTutorials()
    
    private init() {
        createTutorials()
    }
    
    private func createTutorials() {
        tutorials.append(createStyleGuideTutorials())
    }
    
    
    private func createStyleGuideTutorials() -> [Tutorial] {
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: "Code Style", name: "Имена", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: "Code Style", name: "Пробелы и табуляция", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: "Code Style", name: "Классы и структуры", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: "Code Style", name: "Объявления функций", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: "Code Style", name: "Безымянные функции", pathMark: "Playground", image: "xcode-icon"))
        
        return tutorials
    }
    
}
