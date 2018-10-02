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
        var topics: [Tutorial] = []
        
        topics.append(Tutorial(header: "Основы", name: "Xcode", pathMark: "Xcode"))
        topics.append(Tutorial(header: "Основы", name: "Playground", pathMark: "Playground"))
        topics.append(Tutorial(header: "Основы", name: "Переменные", pathMark: "Playground"))
        topics.append(Tutorial(header: "Основы", name: "Константы", pathMark: "Playground"))
        topics.append(Tutorial(header: "Основы", name: "Опционалы", pathMark: "Playground"))
        
        return topics
    }
    
    private func createPatternTutorials() -> [Tutorial] {
        var topics: [Tutorial] = []
        
        topics.append(Tutorial(header: "Паттерны", name: "Одиночка", pathMark: "Playground"))
        topics.append(Tutorial(header: "Паттерны", name: "Прототип", pathMark: "Playground"))
        topics.append(Tutorial(header: "Паттерны", name: "Адаптер", pathMark: "Playground"))
        topics.append(Tutorial(header: "Паттерны", name: "Мост", pathMark: "Playground"))
        topics.append(Tutorial(header: "Паттерны", name: "Наблюдатель", pathMark: "Playground"))
        
        return topics
    }
    
    private func createStyleGuideTutorials() -> [Tutorial] {
        var topics: [Tutorial] = []
        
        topics.append(Tutorial(header: "Code Style", name: "Имена", pathMark: "Playground"))
        topics.append(Tutorial(header: "Code Style", name: "Пробелы и табуляция", pathMark: "Playground"))
        topics.append(Tutorial(header: "Code Style", name: "Классы и структуры", pathMark: "Playground"))
        topics.append(Tutorial(header: "Code Style", name: "Объявления функций", pathMark: "Playground"))
        topics.append(Tutorial(header: "Code Style", name: "Безымянные функции", pathMark: "Playground"))
        
        return topics
    }
    
    private func createMultithreadingTutorials() -> [Tutorial] {
        var topics: [Tutorial] = []
        
        topics.append(Tutorial(header: "Многопоточность", name: "Последовательные очереди", pathMark: "Playground"))
        topics.append(Tutorial(header: "Многопоточность", name: "Параллельные очереди", pathMark: "Playground"))
        topics.append(Tutorial(header: "Многопоточность", name: "Синхронное выполнение", pathMark: "Playground"))
        topics.append(Tutorial(header: "Многопоточность", name: "Асинхронное выполнение", pathMark: "Playground"))
        topics.append(Tutorial(header: "Многопоточность", name: "Глобальные очереди", pathMark: "Playground"))
        
        return topics
    }
}
