//
//  Categories.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 01/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import Foundation

class Categories {
    var categories: [[Tutorial]] = []
    
    static let instance = Categories()
    
    private init() {
        createTutorials()
    }
    
    private func createTutorials() {
        categories.append(createBasicTutorials())
        categories.append(createPatternTutorials())
        categories.append(createStyleGuideTutorials())
        categories.append(createMultithreadingTutorials())
    }
    
    private func createBasicTutorials() -> [Tutorial] {
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: "Основы", name: "Xcode", pathMark: "Xcode", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: "Основы", name: "Playground", pathMark: "Playground", image: "playground-icon"))
        tutorials.append(Tutorial(headerText: "Основы", name: "Переменные", pathMark: "Variables", image: "variable-icon"))
        tutorials.append(Tutorial(headerText: "Основы", name: "Опционалы", pathMark: "Playground", image: "optionals-icon"))
        
        return tutorials
    }
    
    private func createPatternTutorials() -> [Tutorial] {
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: "Паттерны", name: "Одиночка", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: "Паттерны", name: "Прототип", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: "Паттерны", name: "Адаптер", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: "Паттерны", name: "Мост", pathMark: "Playground", image: "xcode-icon"))
        tutorials.append(Tutorial(headerText: "Паттерны", name: "Наблюдатель", pathMark: "Playground", image: "xcode-icon"))
        
        return tutorials
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
