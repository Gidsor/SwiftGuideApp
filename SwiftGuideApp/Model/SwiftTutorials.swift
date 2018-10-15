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
        tutorials.append(createWelcomeTutorials())
        tutorials.append(createBasicTutorials())
        tutorials.append(createMultithreadingTutorials())
    }
    
    private func createWelcomeTutorials() -> [Tutorial] {
        let header = "Быстрый тур по Swift"
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: header, name: "О языке Swift", pathMark: "AboutSwift", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Совместимость версий Swift", pathMark: "VersionSwift", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Переменные", pathMark: "Variables", image: "variable-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Управление потоком", pathMark: "ControlFlow", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Функции и замыкание", pathMark: "FunctionsAndClosures", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Объекты и классы", pathMark: "ObjectsAndClasses", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Перечисления и структуры", pathMark: "EnumerationsAndStructures", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Протоколы и расширения", pathMark: "ProtocolsAndExtensions", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Обработка ошибок", pathMark: "ErrorHandling", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Универсальные типы", pathMark: "Generics", image: "swift-icon"))
        
        return tutorials
    }
    
    private func createBasicTutorials() -> [Tutorial] {
        let header = "Основы"
        var tutorials: [Tutorial] = []
        
        tutorials.append(Tutorial(headerText: header, name: "Константы и переменные", pathMark: "ConstantsAndVariables", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Комментарии", pathMark: "Comments", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Целые числа", pathMark: "Integers", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Числа с плавающей точки", pathMark: "FloatingPointNumbers", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Строгая типизация и Вывод типов", pathMark: "TypeSafetyAndTypeInference", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Числовые литералы", pathMark: "NumericLiterals", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Преобразования числовых типов", pathMark: "NumericTypeConversion", image: "swift-icon"))
        tutorials.append(Tutorial(headerText: header, name: "Псевдонимы типов", pathMark: "TypeAliases", image: "swift-icon"))
        
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
