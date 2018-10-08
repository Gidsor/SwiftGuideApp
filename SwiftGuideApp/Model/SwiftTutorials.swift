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
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: "Основы", name: "Xcode", pathMark: "Xcode", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: "Основы", name: "Playground", pathMark: "Playground", image: "playground-icon"))
        tutorials.append(Tutorial(headerText: "Основы", name: "Переменные", pathMark: "Variables", image: "variable-icon"))
        tutorials.append(Tutorial(headerText: "Основы", name: "Опциональные типы", pathMark: "OptionalTypes", image: "optionals-icon"))
        
        return tutorials
    }
    
    private func createMultithreadingTutorials() -> [Tutorial] {
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: "Многопоточность", name: "Последовательные очереди", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: "Многопоточность", name: "Параллельные очереди", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: "Многопоточность", name: "Синхронное выполнение", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: "Многопоточность", name: "Асинхронное выполнение", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: "Многопоточность", name: "Глобальные очереди", pathMark: "Playground", image: "xcode-icon"))
        
        return tutorials
    }
}
