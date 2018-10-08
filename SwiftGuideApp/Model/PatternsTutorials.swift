//
//  PatternsTutorials.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 08/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import Foundation

class PatternsTutorials {
    var tutorials: [[Tutorial]] = []
    
    static let instance = PatternsTutorials()
    
    private init() {
        createTutorials()
    }
    
    private func createTutorials() {
        tutorials.append(createPatternTutorials())
    }
    
    private func createPatternTutorials() -> [Tutorial] {
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: "Паттерны", name: "Паттерны проектирования", pathMark: "DesignPatterns", image: "design-patterns-icon"))
        tutorials.append(Tutorial(headerText: "Паттерны", name: "Одиночка", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: "Паттерны", name: "Прототип", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: "Паттерны", name: "Адаптер", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: "Паттерны", name: "Мост", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: "Паттерны", name: "Наблюдатель", pathMark: "Playground", image: "xcode-icon"))
        
        return tutorials
    }
    
}
