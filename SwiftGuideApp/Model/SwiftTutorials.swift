//
//  SwiftTutorials.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 08/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import Foundation

class SwiftTutorials {
    var tutorials: [[Tutorial]] = []
    
    static let instance = SwiftTutorials()
    
    private init() {
        createTutorials()
    }
    
    private func createTutorials() {
        tutorials.append(createBasicTutorials())
        tutorials.append(createMultithreadingTutorials())
    }
    
    private func createBasicTutorials() -> [Tutorial] {
        let header = "Знакомство со Swift"
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: header, name: "О языке Swift", pathMark: "AboutSwift", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Совместимость версий Swift", pathMark: "Variables", image: "variable-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Опциональные типы", pathMark: "OptionalTypes", image: "optionals-icon"))
        
        return tutorials
    }
    
    private func createMultithreadingTutorials() -> [Tutorial] {
        let header = "Многопоточность"
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: header, name: "Последовательные очереди", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Параллельные очереди", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Синхронное выполнение", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Асинхронное выполнение", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Глобальные очереди", pathMark: "Playground", image: "xcode-icon"))
        
        return tutorials
    }
}
