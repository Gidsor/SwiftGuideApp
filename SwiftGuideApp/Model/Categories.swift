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
        
        tutorials.append(Tutorial(headerText: "Основы", name: "Xcode", pathMark: "Xcode"))
        tutorials.append(Tutorial(headerText: "Основы", name: "Playground", pathMark: "Playground"))
        tutorials.append(Tutorial(headerText: "Основы", name: "Переменные", pathMark: "Playground"))
        tutorials.append(Tutorial(headerText: "Основы", name: "Константы", pathMark: "Playground"))
        tutorials.append(Tutorial(headerText: "Основы", name: "Опционалы", pathMark: "Playground"))
        
        return tutorials
    }
    
    private func createPatternTutorials() -> [Tutorial] {
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: "Паттерны", name: "Одиночка", pathMark: "Playground"))
        tutorials.append(Tutorial(headerText: "Паттерны", name: "Прототип", pathMark: "Playground"))
        tutorials.append(Tutorial(headerText: "Паттерны", name: "Адаптер", pathMark: "Playground"))
        tutorials.append(Tutorial(headerText: "Паттерны", name: "Мост", pathMark: "Playground"))
        tutorials.append(Tutorial(headerText: "Паттерны", name: "Наблюдатель", pathMark: "Playground"))
        
        return tutorials
    }
    
    private func createStyleGuideTutorials() -> [Tutorial] {
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: "Code Style", name: "Имена", pathMark: "Playground"))
        tutorials.append(Tutorial(headerText: "Code Style", name: "Пробелы и табуляция", pathMark: "Playground"))
        tutorials.append(Tutorial(headerText: "Code Style", name: "Классы и структуры", pathMark: "Playground"))
        tutorials.append(Tutorial(headerText: "Code Style", name: "Объявления функций", pathMark: "Playground"))
        tutorials.append(Tutorial(headerText: "Code Style", name: "Безымянные функции", pathMark: "Playground"))
        
        return tutorials
    }
    
    private func createMultithreadingTutorials() -> [Tutorial] {
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: "Многопоточность", name: "Последовательные очереди", pathMark: "Playground"))
        tutorials.append(Tutorial(headerText: "Многопоточность", name: "Параллельные очереди", pathMark: "Playground"))
        tutorials.append(Tutorial(headerText: "Многопоточность", name: "Синхронное выполнение", pathMark: "Playground"))
        tutorials.append(Tutorial(headerText: "Многопоточность", name: "Асинхронное выполнение", pathMark: "Playground"))
        tutorials.append(Tutorial(headerText: "Многопоточность", name: "Глобальные очереди", pathMark: "Playground"))
        
        return tutorials
    }
}
