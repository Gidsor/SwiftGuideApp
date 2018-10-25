//
//  PatternsTutorials.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 08/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//


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
        let header = "Паттерны"
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: header, name: "Паттерны проектирования", pathMark: "DesignPatterns", image: "design-patterns-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Одиночка", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Прототип", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Адаптер", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Мост", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Наблюдатель", pathMark: "Playground", image: "xcode-icon"))
        
        return tutorials
    }
    
}
