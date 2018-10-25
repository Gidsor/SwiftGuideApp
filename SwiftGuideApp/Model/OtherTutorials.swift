//
//  OtherTutorials.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 08/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//


class OtherTutorials {
    var tutorials: [[Tutorial]] = []
    
    static let instance = OtherTutorials()
    
    private init() {
        createTutorials()
    }
    
    private func createTutorials() {
        tutorials.append(createStyleGuideTutorials())
        tutorials.append(createXcodeTurorials())
    }
    
    
    private func createStyleGuideTutorials() -> [Tutorial] {
        let header = "Code Style"
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: header, name: "Имена", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Пробелы и табуляция", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Классы и структуры", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Объявления функций", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Безымянные функции", pathMark: "Playground", image: "xcode-icon"))
        
        return tutorials
    }
    
    private func createXcodeTurorials() -> [Tutorial] {
        let header = "Xcode"
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: header, name: "Xcode", pathMark: "Xcode", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Playground", pathMark: "Playground", image: "playground-icon"))
        
        return tutorials
    }
    
}
